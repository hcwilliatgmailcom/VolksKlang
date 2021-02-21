using Microsoft.EntityFrameworkCore.Migrations;

namespace VolksKlang.Migrations
{
    public partial class FileSerial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Serial",
                table: "File",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Serial",
                table: "File");
        }
    }
}
