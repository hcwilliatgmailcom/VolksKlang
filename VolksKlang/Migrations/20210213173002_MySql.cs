using System;
using Microsoft.EntityFrameworkCore.Migrations;
using MySql.Data.EntityFrameworkCore.Metadata;

namespace VolksKlang.Migrations
{
    public partial class MySql : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Bild",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    Inhalt = table.Column<byte[]>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Bild", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Herkunft",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Herkunft", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Kategorie",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Kategorie", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Publisher",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Publisher", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Standort",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Standort", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Typ",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Typ", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Book",
                columns: table => new
                {
                    ISBN = table.Column<string>(nullable: false),
                    Title = table.Column<string>(nullable: false),
                    Author = table.Column<string>(nullable: true),
                    Language = table.Column<string>(nullable: true),
                    Pages = table.Column<int>(nullable: false),
                    PublisherID = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Book", x => x.ISBN);
                    table.ForeignKey(
                        name: "FK_Book_Publisher_PublisherID",
                        column: x => x.PublisherID,
                        principalTable: "Publisher",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Objekt",
                columns: table => new
                {
                    ID = table.Column<int>(nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    HerkunftID = table.Column<int>(nullable: true),
                    StandortID = table.Column<int>(nullable: true),
                    Objektbezeichnung = table.Column<string>(nullable: true),
                    TypID = table.Column<int>(nullable: true),
                    KategorieID = table.Column<int>(nullable: true),
                    Beschreibung = table.Column<string>(nullable: true),
                    Material = table.Column<string>(nullable: true),
                    Abmessungen = table.Column<string>(nullable: true),
                    Zustand = table.Column<string>(nullable: true),
                    Objektbeschriftung = table.Column<string>(nullable: true),
                    BildID = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Objekt", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Objekt_Bild_BildID",
                        column: x => x.BildID,
                        principalTable: "Bild",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Objekt_Herkunft_HerkunftID",
                        column: x => x.HerkunftID,
                        principalTable: "Herkunft",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Objekt_Kategorie_KategorieID",
                        column: x => x.KategorieID,
                        principalTable: "Kategorie",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Objekt_Standort_StandortID",
                        column: x => x.StandortID,
                        principalTable: "Standort",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Objekt_Typ_TypID",
                        column: x => x.TypID,
                        principalTable: "Typ",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Book_PublisherID",
                table: "Book",
                column: "PublisherID");

            migrationBuilder.CreateIndex(
                name: "IX_Objekt_BildID",
                table: "Objekt",
                column: "BildID");

            migrationBuilder.CreateIndex(
                name: "IX_Objekt_HerkunftID",
                table: "Objekt",
                column: "HerkunftID");

            migrationBuilder.CreateIndex(
                name: "IX_Objekt_KategorieID",
                table: "Objekt",
                column: "KategorieID");

            migrationBuilder.CreateIndex(
                name: "IX_Objekt_StandortID",
                table: "Objekt",
                column: "StandortID");

            migrationBuilder.CreateIndex(
                name: "IX_Objekt_TypID",
                table: "Objekt",
                column: "TypID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Book");

            migrationBuilder.DropTable(
                name: "Objekt");

            migrationBuilder.DropTable(
                name: "Publisher");

            migrationBuilder.DropTable(
                name: "Bild");

            migrationBuilder.DropTable(
                name: "Herkunft");

            migrationBuilder.DropTable(
                name: "Kategorie");

            migrationBuilder.DropTable(
                name: "Standort");

            migrationBuilder.DropTable(
                name: "Typ");
        }
    }
}
