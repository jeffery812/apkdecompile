.class public final Lio/boxcar/push/b/a/d;
.super Lio/boxcar/push/b/a/c;
.source "UpgradeStrategy2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lio/boxcar/push/b/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/database/sqlite/SQLiteDatabase;)V
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
    invoke-super {p0, p1, p2}, Lio/boxcar/push/b/a/c;->a(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 20
    const-string v0, "CREATE TABLE notification_extras ( key TEXT NOT NULL, value TEXT NOT NULL, notif_id INTEGER, FOREIGN KEY( notif_id ) REFERENCES notification (rowid))"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public final b(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "oldVersion"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Lio/boxcar/push/b/a/c;->b(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 29
    const-string v0, "CREATE TABLE notification_extras ( key TEXT NOT NULL, value TEXT NOT NULL, notif_id INTEGER, FOREIGN KEY( notif_id ) REFERENCES notification (rowid))"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
