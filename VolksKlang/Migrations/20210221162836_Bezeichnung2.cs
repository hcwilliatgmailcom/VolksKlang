using Microsoft.EntityFrameworkCore.Migrations;

namespace VolksKlang.Migrations
{
    public partial class Bezeichnung2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "BezeichnungID",
                table: "Objekt",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Objekt_BezeichnungID",
                table: "Objekt",
                column: "BezeichnungID");

            migrationBuilder.AddForeignKey(
                name: "FK_Objekt_Bezeichnung_BezeichnungID",
                table: "Objekt",
                column: "BezeichnungID",
                principalTable: "Bezeichnung",
                principalColumn: "ID",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Objekt_Bezeichnung_BezeichnungID",
                table: "Objekt");

            migrationBuilder.DropIndex(
                name: "IX_Objekt_BezeichnungID",
                table: "Objekt");

            migrationBuilder.DropColumn(
                name: "BezeichnungID",
                table: "Objekt");
        }
    }
}
