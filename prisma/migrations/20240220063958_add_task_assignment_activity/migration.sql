-- AlterEnum
-- This migration adds more than one value to an enum.
-- With PostgreSQL versions 11 and earlier, this is not possible
-- in a single migration. This can be worked around by creating
-- multiple migrations, each migration adding only one value to
-- the enum.


ALTER TYPE "ActivityType" ADD VALUE 'TASK_ASSIGNED';
ALTER TYPE "ActivityType" ADD VALUE 'TASK_ASSIGNED_TO_SELF';
ALTER TYPE "ActivityType" ADD VALUE 'TASK_UNASSIGNED';

-- AlterEnum
ALTER TYPE "Role" ADD VALUE 'admin';

-- AlterTable
ALTER TABLE "Activity" ADD COLUMN     "newAssignedToId" TEXT,
ADD COLUMN     "oldAssignedToId" TEXT;
