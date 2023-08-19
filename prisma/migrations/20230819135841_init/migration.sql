/*
  Warnings:

  - You are about to drop the column `created_at` on the `Novel` table. All the data in the column will be lost.
  - You are about to drop the column `download_url` on the `Novel` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Novel` table. All the data in the column will be lost.
  - Added the required column `author` to the `Novel` table without a default value. This is not possible if the table is not empty.
  - Added the required column `synopsis` to the `Novel` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Novel` DROP COLUMN `created_at`,
    DROP COLUMN `download_url`,
    DROP COLUMN `updated_at`,
    ADD COLUMN `author` VARCHAR(191) NOT NULL,
    ADD COLUMN `synopsis` VARCHAR(191) NOT NULL;

-- CreateTable
CREATE TABLE `Chapter` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `chapterName` VARCHAR(191) NOT NULL,
    `downloadUrl` VARCHAR(191) NOT NULL,
    `novelId` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL,
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Chapter` ADD CONSTRAINT `Chapter_novelId_fkey` FOREIGN KEY (`novelId`) REFERENCES `Novel`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
