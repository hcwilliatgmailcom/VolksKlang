using Microsoft.EntityFrameworkCore.Migrations;

namespace VolksKlang.Migrations
{
    public partial class Typ : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Objekt_Typ_TypID",
                table: "Objekt");

            migrationBuilder.DropTable(
                name: "Typ");

            migrationBuilder.DropIndex(
                name: "IX_Objekt_TypID",
                table: "Objekt");

            migrationBuilder.DropColumn(
                name: "TypID",
                table: "Objekt");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "TypID",
                table: "Objekt",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Typ",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Typ", x => x.ID);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Objekt_TypID",
                table: "Objekt",
                column: "TypID");

            migrationBuilder.AddForeignKey(
                name: "FK_Objekt_Typ_TypID",
                table: "Objekt",
                column: "TypID",
                principalTable: "Typ",
                principalColumn: "ID",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
