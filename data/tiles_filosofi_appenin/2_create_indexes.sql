BEGIN;
CREATE INDEX IF NOT EXISTS "tiles_filosofi_appenin_idx" ON "tiles_filosofi_appenin" USING GIST ("geom");
END;
COMMIT;

