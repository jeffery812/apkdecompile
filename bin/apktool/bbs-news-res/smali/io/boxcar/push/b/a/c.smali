.class public Lio/boxcar/push/b/a/c;
.super Ljava/lang/Object;
.source "UpgradeStrategy1.java"

# interfaces
.implements Lio/boxcar/push/b/a/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "oldVersion"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    const-string v0, "CREATE TABLE notification ( notification_id TEXT NOT NULL, date INTEGER NOT NULL, badge INTEGER NOT NULL, body TEXT NOT NULL, sound TEXT, rich_push INTEGER NOT NULL, url TEXT, state INTEGER NOT NULL, PRIMARY KEY (notification_id) )"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    const-string v0, "CREATE TABLE setting ( name TEXT PRIMARY KEY NOT NULL, value TEXT)"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string v0, "CREATE INDEX notification_date_idx ON notification(date)"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public b(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "oldVersion"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method
