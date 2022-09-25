using System;
using System.Drawing;
using System.Windows.Forms;
using System.Data.SqlClient;
using WinFormCook.Classes;

namespace WinFormCook
{
    public partial class Authorizations : Form
    {
        string sql;

        public Authorizations()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Начальные настройки
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Authorizations_Load(object sender, EventArgs e)
        {
            tableLayoutPanelTop.BackColor = Color.FromArgb(255, 204, 153);
            tableLayoutPanelBottom.BackColor = Color.FromArgb(255, 204, 153);
            tableLayoutPanelMain.BackColor = Color.FromArgb(255, 255, 255);

            //Настройка связи с БД
            Helper.Connection = new SqlConnection();
            Helper.Connection.ConnectionString = Classes.Helper.connectionString;
            try
                {
                Helper.Connection.Open();      //Опасная команда
                }
                catch (SqlException ex)     //Обработка сбоя при подключении
                {
                    MessageBox.Show(ex.Message + " Уровень ошибки " + ex.Class);
                    Application.Exit();     //Завершение приложения
                }
                catch (Exception ex)        //Общий сбой при подключении
                {
                    MessageBox.Show("Ошибка подключения " + ex.Message);
                    Application.Exit();     //Завершение приложения
                }
             MessageBox.Show("Связь с сервером установлена");

            //Вывод всех пользователей в таблицу
            sql = "SELECT * FROM [User]";
            dataGridViewUsers.Rows.Clear();
            int numRow = -1;
            using (SqlCommand command = Helper.Connection.CreateCommand())
            {
                command.CommandText = sql;
                SqlDataReader reader = command.ExecuteReader();
                dataGridViewUsers.ColumnCount = reader.FieldCount;
                while (reader.Read())
                {
                    if (reader.HasRows)
                    {
                        numRow++;
                        dataGridViewUsers.Rows.Add();
                        dataGridViewUsers[0, numRow].Value = (int)reader["UserID"];
                        dataGridViewUsers[1, numRow].Value = reader["UserSurname"].ToString();
                        dataGridViewUsers[2, numRow].Value = reader["UserName"].ToString();
                        dataGridViewUsers[3, numRow].Value = reader["UserPatronymic"].ToString();
                        dataGridViewUsers[4, numRow].Value = reader["UserLogin"].ToString();
                        dataGridViewUsers[5, numRow].Value = reader["UserPassword"].ToString();
                        dataGridViewUsers[6, numRow].Value = (int)reader["UserRoleID"];
                    }
                    else
                    {
                        MessageBox.Show("Нет данных в таблице", "Ошибка ввода", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                reader.Close(); 
            }
        }

        /// <summary>
        /// Выход из приложения
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonExit_Click(object sender, EventArgs e)
        {
            Helper.Connection.Close();
            this.Close();
        }

        /// <summary>
        /// Вход без авторизации
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonNonAuthoriz_Click(object sender, EventArgs e)
        {
            Classes.Helper.UserID = 0;
            Classes.Helper.UserRoleID = 0;
            Classes.Helper.FullName = "Без имени";
            MessageBox.Show("Вы зашли с ролью " + (Classes.Roles)Classes.Helper.UserRoleID, "Вход", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Hide();
            ListProduct listProduct = new ListProduct();
            listProduct.ShowDialog();
            this.Show();
        }

        /// <summary>
        /// Вход с авторизацией
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonAuthoriz_Click(object sender, EventArgs e)
        {
                //Поиск пользователя по логину и паролю
                string login = textBoxLogin.Text;
                string password = textBoxPassword.Text;
                if (String.IsNullOrEmpty(login) || String.IsNullOrEmpty(password))
                {
                    MessageBox.Show("Не все данные введены", "Ошибка ввода", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                //SQL-команда
                sql = "SELECT * FROM [User] WHERE [UserLogin] = @Log AND [UserPassword] = @Pas";
                //sql = $"SELECT * FROM [User] WHERE [Login] = '{login}' AND [Password] = '{password}'";
                using (SqlCommand command = Helper.Connection.CreateCommand())
                {
                    command.Parameters.AddWithValue("@Log", login);
                    command.Parameters.AddWithValue("@Pas", password);
                    command.CommandText = sql;
                    //Результат запроса
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.HasRows)
                    {
                        reader.Read();
                        Classes.Helper.UserID = (int)reader["UserID"];
                        Classes.Helper.UserRoleID = (int)reader["UserRoleID"];
                        Classes.Helper.FullName = reader["UserSurname"].ToString() + " " +
                            reader["UserName"].ToString() + " " + reader["UserPatronymic"].ToString();
                        MessageBox.Show("Вы зашли с ролью " + (Classes.Roles)Classes.Helper.UserRoleID, "Вход", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        this.Hide();
                        ListProduct listProduct = new ListProduct();
                        listProduct.ShowDialog();
                        this.Show();
                    }
                    else
                    {
                        MessageBox.Show("Ваших данных нет в системе", "Ошибка ввода", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    reader.Close();
                }
        }
    }
}
