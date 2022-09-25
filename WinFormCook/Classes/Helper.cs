using System.Data.SqlClient;

namespace WinFormCook.Classes
{
    public class Helper
    {
        //public static string connectionString = @"Data Source = sql.vm; Initial Catalog = DBCooker; Persist Security Info = True; User ID = iam15; Password = password";
        //public static string connectionString = @"Data Source = MAMA-ПК\SQLEXPRESS;Initial Catalog= DBCook; Integrated Security=True";
        public static string connectionString = @"Data Source = (local)\SQLEXPRESS;Initial Catalog= DBCook; Integrated Security=True";
        public static int UserID { get; set; }
        public static int UserRoleID { get; set; }
        public static string FullName { get; set; }
        public static SqlConnection Connection { get; set; }
    }
    public enum Roles { Гость = 0, Клиент = 1, Менеджер = 2, Администратор = 3 };
}
