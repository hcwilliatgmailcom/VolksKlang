using Microsoft.EntityFrameworkCore.Migrations;

namespace VolksKlang.Migrations
{
    public partial class Bezeichns : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "BezeichnID",
                table: "Objekt",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Objekt_BezeichnID",
                table: "Objekt",
                column: "BezeichnID");

            migrationBuilder.AddForeignKey(
                name: "FK_Objekt_Bezeichn_BezeichnID",
                table: "Objekt",
                column: "BezeichnID",
                principalTable: "Bezeichn",
                principalColumn: "ID",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Objekt_Bezeichn_BezeichnID",
                table: "Objekt");

            migrationBuilder.DropIndex(
                name: "IX_Objekt_BezeichnID",
                table: "Objekt");

            migrationBuilder.DropColumn(
                name: "BezeichnID",
                table: "Objekt");
        }
    }
}
