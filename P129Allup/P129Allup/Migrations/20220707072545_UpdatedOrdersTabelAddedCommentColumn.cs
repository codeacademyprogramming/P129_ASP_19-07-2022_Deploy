﻿using Microsoft.EntityFrameworkCore.Migrations;

namespace P129Allup.Migrations
{
    public partial class UpdatedOrdersTabelAddedCommentColumn : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Comment",
                table: "Orders",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Comment",
                table: "Orders");
        }
    }
}
