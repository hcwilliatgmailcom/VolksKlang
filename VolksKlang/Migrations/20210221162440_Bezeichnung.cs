using Microsoft.EntityFrameworkCore.Migrations;

namespace VolksKlang.Migrations
{
    public partial class Bezeichnung : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Objekt_Bezeichn_BezeichnID",
                table: "Objekt");

            migrationBuilder.DropTable(
                name: "Bezeichn");

            migrationBuilder.DropIndex(
                name: "IX_Objekt_BezeichnID",
                table: "Objekt");

            migrationBuilder.DropColumn(
                name: "BezeichnID",
                table: "Objekt");

            migrationBuilder.CreateTable(
                name: "Bezeichnung",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Kuerzel = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Bezeichnung", x => x.ID);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Bezeichnung");

            migrationBuilder.AddColumn<int>(
                name: "BezeichnID",
                table: "Objekt",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Bezeichn",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Kuerzel = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Bezeichn", x => x.ID);
                });

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
    }
}
