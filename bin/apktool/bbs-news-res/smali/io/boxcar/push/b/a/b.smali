.class public final Lio/boxcar/push/b/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteStorage.java"

# interfaces
.implements Lio/boxcar/push/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/boxcar/push/b/a/b$a;
    }
.end annotation


# static fields
.field protected static final a:[Ljava/lang/String;

.field protected static final b:[Ljava/lang/String;


# instance fields
.field protected c:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "notification_id"

    aput-object v1, v0, v3

    const-string v1, "body"

    aput-object v1, v0, v4

    const-string v1, "badge"

    aput-object v1, v0, v5

    const-string v1, "sound"

    aput-object v1, v0, v6

    const-string v1, "rich_push"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rowid"

    aput-object v2, v0, v1

    sput-object v0, Lio/boxcar/push/b/a/b;->a:[Ljava/lang/String;

    .line 47
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    const-string v1, "notif_id"

    aput-object v1, v0, v5

    const-string v1, "rowid"

    aput-object v1, v0, v6

    sput-object v0, Lio/boxcar/push/b/a/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "logTag"

    .prologue
    .line 93
    const-string v0, "bxc.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 90
    const/16 v0, 0x64

    iput v0, p0, Lio/boxcar/push/b/a/b;->c:I

    .line 94
    iput-object p2, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lio/boxcar/push/model/BXCNotification;
    .locals 10
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    .line 716
    const-string v0, "notification_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, id:Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, body:Ljava/lang/String;
    new-instance v7, Ljava/util/Date;

    const-string v0, "date"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 719
    .local v7, timestamp:Ljava/util/Date;
    const-string v0, "rich_push"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 720
    .local v3, richPush:Z
    :goto_0
    const-string v0, "badge"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 722
    .local v5, badge:I
    const/4 v6, 0x0

    .line 723
    .local v6, sound:Ljava/lang/String;
    const-string v0, "sound"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    const-string v0, "sound"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 727
    :cond_0
    const/4 v4, 0x0

    .line 728
    .local v4, url:Ljava/lang/String;
    const-string v0, "url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 729
    const-string v0, "url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 732
    :cond_1
    new-instance v0, Lio/boxcar/push/model/BXCNotification;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-direct/range {v0 .. v8}, Lio/boxcar/push/model/BXCNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/HashMap;)V

    return-object v0

    .line 719
    .end local v3           #richPush:Z
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #badge:I
    .end local v6           #sound:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private a(Lio/boxcar/push/model/BXCNotification;I)V
    .locals 13
    .parameter "notification"
    .parameter "notificationRowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 760
    const/4 v8, 0x0

    .line 763
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "notification_extras"

    sget-object v2, Lio/boxcar/push/b/a/b;->b:[Ljava/lang/String;

    const-string v3, "notif_id = ?"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 769
    .local v11, query:Ljava/lang/String;
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 773
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 776
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 777
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    if-eqz v8, :cond_0

    .line 793
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 782
    const-string v0, "key"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 783
    .local v10, key:Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 784
    .local v12, value:Ljava/lang/String;
    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 788
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #query:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 789
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v1, "Error retrieving notification extras"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    new-instance v0, Lio/boxcar/push/b/c;

    const-string v1, "Unexpected db exception"

    invoke-direct {v0, v1, v9}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 792
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 793
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 792
    .restart local v11       #query:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_0

    .line 793
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 677
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 678
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "value"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "setting"

    const-string v5, "name = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 683
    if-nez v3, :cond_0

    .line 684
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 685
    .local v2, values2:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "setting"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v2           #values2:Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 689
    .end local v1           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 690
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lio/boxcar/push/b/c;

    const-string v4, "Unexpected db exception"

    invoke-direct {v3, v4, v0}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 8
    .parameter "name"
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 633
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 634
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "value"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "setting"

    const-string v5, "name = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 639
    if-nez v3, :cond_0

    .line 640
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 641
    .local v2, values2:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v3, "value"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "setting"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    .end local v2           #values2:Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 645
    .end local v1           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 646
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lio/boxcar/push/b/c;

    const-string v4, "Unexpected db exception"

    invoke-direct {v3, v4, v0}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private e(Ljava/lang/String;)Ljava/util/Date;
    .locals 13
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 607
    const/4 v8, 0x0

    .line 609
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "setting"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name = ?"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 613
    .local v10, query:Ljava/lang/String;
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 616
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 618
    .local v11, timestamp:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    if-eqz v8, :cond_0

    .line 626
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v11           #timestamp:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    if-eqz v8, :cond_2

    .line 626
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v12

    goto :goto_0

    .line 622
    .end local v10           #query:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 623
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Lio/boxcar/push/b/c;

    const-string v1, "Unexpected db exception"

    invoke-direct {v0, v1, v9}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 626
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 651
    const/4 v8, 0x0

    .line 653
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "setting"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name = ?"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 657
    .local v10, query:Ljava/lang/String;
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 660
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 669
    if-eqz v8, :cond_0

    .line 670
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 665
    :cond_1
    if-eqz v8, :cond_2

    .line 670
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v11

    goto :goto_0

    .line 666
    .end local v10           #query:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 667
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Lio/boxcar/push/b/c;

    const-string v1, "Unexpected db exception"

    invoke-direct {v0, v1, v9}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 670
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private j()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v8, 0x0

    .line 565
    .local v8, c:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v11, notificationIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "notification"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "notification_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notification_id NOT IN (SELECT notification_id FROM notification ORDER BY date DESC LIMIT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lio/boxcar/push/b/a/b;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 578
    .local v12, query:Ljava/lang/String;
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 582
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 584
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    if-eqz v8, :cond_0

    .line 601
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v11

    .line 589
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 590
    const-string v0, "notification_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 591
    .local v10, id:Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 597
    .end local v10           #id:Ljava/lang/String;
    .end local v12           #query:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 598
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v0, Lio/boxcar/push/b/c;

    const-string v1, "Unexpected db exception"

    invoke-direct {v0, v1, v9}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 600
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 601
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 600
    .restart local v12       #query:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_0

    .line 601
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)Lio/boxcar/push/b/b$a;
    .locals 4
    .parameter "readOnly"

    .prologue
    .line 124
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v1, "Started %s transaction"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "read"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 130
    new-instance v0, Lio/boxcar/push/b/a/b$a;

    invoke-direct {v0, p0, p1}, Lio/boxcar/push/b/a/b$a;-><init>(Lio/boxcar/push/b/a/b;Z)V

    return-object v0

    .line 124
    :cond_0
    const-string v0, "write"

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(I)Ljava/util/List;
    .locals 14
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lio/boxcar/push/model/BXCNotification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 219
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v12, result:Ljava/util/List;,"Ljava/util/List<Lio/boxcar/push/model/BXCNotification;>;"
    const/4 v8, 0x0

    .line 225
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "notification"

    sget-object v2, Lio/boxcar/push/b/a/b;->a:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "state = ? ORDER BY date DESC LIMIT 100 OFFSET "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 233
    .local v11, query:Ljava/lang/String;
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 237
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 240
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    if-eqz v8, :cond_0

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v12

    .line 245
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    invoke-static {v8}, Lio/boxcar/push/b/a/b;->a(Landroid/database/Cursor;)Lio/boxcar/push/model/BXCNotification;

    move-result-object v10

    .line 247
    .local v10, message:Lio/boxcar/push/model/BXCNotification;
    const-string v0, "rowid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 248
    .local v13, rowId:I
    invoke-direct {p0, v10, v13}, Lio/boxcar/push/b/a/b;->a(Lio/boxcar/push/model/BXCNotification;I)V

    .line 249
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 255
    .end local v10           #message:Lio/boxcar/push/model/BXCNotification;
    .end local v11           #query:Ljava/lang/String;
    .end local v13           #rowId:I
    :catch_0
    move-exception v9

    .line 256
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v1, "Error retrieving notifications with state 0"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    new-instance v0, Lio/boxcar/push/b/c;

    const-string v1, "Unexpected db exception"

    invoke-direct {v0, v1, v9}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 259
    .restart local v11       #query:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_0

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final a(ILjava/util/Date;)Ljava/util/List;
    .locals 14
    .parameter "size"
    .parameter "since"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/boxcar/push/model/BXCNotification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 271
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v12, result:Ljava/util/List;,"Ljava/util/List<Lio/boxcar/push/model/BXCNotification;>;"
    const/4 v8, 0x0

    .line 278
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "notification"

    sget-object v2, Lio/boxcar/push/b/a/b;->a:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "state = ? AND date >= ? ORDER BY date DESC LIMIT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OFFSET 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 287
    .local v11, query:Ljava/lang/String;
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 291
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 295
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    if-eqz v8, :cond_0

    .line 315
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v12

    .line 300
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 301
    invoke-static {v8}, Lio/boxcar/push/b/a/b;->a(Landroid/database/Cursor;)Lio/boxcar/push/model/BXCNotification;

    move-result-object v10

    .line 302
    .local v10, message:Lio/boxcar/push/model/BXCNotification;
    const-string v0, "rowid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 303
    .local v13, rowId:I
    invoke-direct {p0, v10, v13}, Lio/boxcar/push/b/a/b;->a(Lio/boxcar/push/model/BXCNotification;I)V

    .line 304
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 310
    .end local v10           #message:Lio/boxcar/push/model/BXCNotification;
    .end local v11           #query:Ljava/lang/String;
    .end local v13           #rowId:I
    :catch_0
    move-exception v9

    .line 311
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v1, "Error retrieving notifications with state 0"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    new-instance v0, Lio/boxcar/push/b/c;

    const-string v1, "Unexpected db exception"

    invoke-direct {v0, v1, v9}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 315
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 314
    .restart local v11       #query:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_0

    .line 315
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "notification_extras"

    const-string v3, "notif_id in (SELECT m.rowid FROM notification_extras q INNER JOIN notification m ON q.notif_id = m.rowid AND m.state >= ? )"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "notification"

    const-string v3, "state >= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lio/boxcar/push/b/c;

    const-string v2, "Unexpected db exception"

    invoke-direct {v1, v2, v0}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lio/boxcar/push/b/b$a;)V
    .locals 6
    .parameter "t"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    move-object v1, p1

    check-cast v1, Lio/boxcar/push/b/a/b$a;

    .line 136
    .local v1, tx:Lio/boxcar/push/b/a/b$a;
    invoke-virtual {v1}, Lio/boxcar/push/b/a/b$a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v3, "Read-only transaction %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lio/boxcar/push/b/a/b$a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "finished successfully"

    :goto_0
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    :goto_1
    invoke-virtual {v1}, Lio/boxcar/push/b/a/b$a;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_2
    invoke-virtual {v1}, Lio/boxcar/push/b/a/b$a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 150
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 151
    return-void

    .line 137
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const-string v2, "failed"

    goto :goto_0

    .line 140
    :cond_2
    iget-object v2, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v3, "%s transaction"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lio/boxcar/push/b/a/b$a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Committing"

    :goto_3
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Rollingback"

    goto :goto_3

    .line 144
    :cond_4
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Lio/boxcar/push/model/BXCNotification;)V
    .locals 10
    .parameter "notification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 164
    iget-object v7, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Storing notification with id: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "notification_id"

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "body"

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "badge"

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getBadge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "date"

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "rich_push"

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->isRichPush()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getSound()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "sound"

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getSound()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "url"

    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v6, "state"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    .local v3, row:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "notification"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 173
    .local v4, rowId:J
    invoke-virtual {p1}, Lio/boxcar/push/model/BXCNotification;->getExtras()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 174
    .local v1, extra:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v3, Landroid/content/ContentValues;

    .end local v3           #row:Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "key"

    invoke-virtual {v3, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "value"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "notif_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    .restart local v3       #row:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "notification_extras"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 178
    .end local v1           #extra:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #row:Landroid/content/ContentValues;
    .end local v4           #rowId:J
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    iget-object v6, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v7, "Duplicated message"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    new-instance v6, Lio/boxcar/push/b/a;

    const-string v7, "Unable to insert duplicate messages"

    invoke-direct {v6, v7}, Lio/boxcar/push/b/a;-><init>(Ljava/lang/String;)V

    throw v6

    .line 182
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_1
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v7, "Unexpected db exception"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    new-instance v6, Lio/boxcar/push/b/c;

    const-string v7, "Unexpected db exception"

    invoke-direct {v6, v7, v0}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 185
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #row:Landroid/content/ContentValues;
    .restart local v4       #rowId:J
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter "registrationId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 545
    const-string v0, "registration_id"

    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    invoke-direct {p0, v0, p1}, Lio/boxcar/push/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void

    .line 545
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 7
    .parameter "id"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v3, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Updating notification with id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 330
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v3, "notification"

    const-string v4, "notification_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    return-void

    .line 337
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 338
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lio/boxcar/push/b/c;

    const-string v4, "Unexpected db exception"

    invoke-direct {v3, v4, v1}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final a(Ljava/util/Date;)V
    .locals 1
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 447
    const-string v0, "last_registration"

    invoke-direct {p0, v0, p1}, Lio/boxcar/push/b/a/b;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 448
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 467
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 468
    if-nez p1, :cond_0

    .line 469
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .restart local p1       #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 472
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, tag:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 476
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 479
    .end local v2           #tag:Ljava/lang/String;
    :cond_2
    const-string v3, "last_tags"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lio/boxcar/push/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public final b()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v5, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 398
    :try_start_0
    invoke-direct {p0}, Lio/boxcar/push/b/a/b;->j()Ljava/util/List;

    move-result-object v4

    .line 400
    .local v4, notificationIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 402
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 405
    .local v3, notificationId:Ljava/lang/String;
    invoke-virtual {p0}, Lio/boxcar/push/b/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "notification_extras"

    const-string v7, "notif_id in (SELECT m.rowid FROM notification_extras q INNER JOIN notification m ON q.notif_id = m.rowid AND m.notification_id = ? )"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 413
    const-string v5, "notification"

    const-string v6, "notification_id = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #notificationId:Ljava/lang/String;
    .end local v4           #notificationIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 418
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Lio/boxcar/push/b/c;

    const-string v6, "Unexpected db exception"

    invoke-direct {v5, v6, v1}, Lio/boxcar/push/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 419
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #notificationIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 496
    const-string v0, "last_alias"

    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    invoke-direct {p0, v0, p1}, Lio/boxcar/push/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-void

    .line 496
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public final b(Ljava/util/Date;)V
    .locals 1
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 559
    const-string v0, "last_cleanup"

    invoke-direct {p0, v0, p1}, Lio/boxcar/push/b/a/b;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 560
    return-void
.end method

.method public final c()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 441
    const-string v0, "last_registration"

    invoke-direct {p0, v0}, Lio/boxcar/push/b/a/b;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter "deviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 513
    const-string v0, "last_device_name"

    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    invoke-direct {p0, v0, p1}, Lio/boxcar/push/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void

    .line 513
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 534
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 535
    const-string v1, "registration_id"

    invoke-direct {p0, v1}, Lio/boxcar/push/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, registrationId:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 539
    .end local v0           #registrationId:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .parameter "applicationId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 529
    const-string v0, "app_id"

    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    invoke-direct {p0, v0, p1}, Lio/boxcar/push/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void

    .line 529
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public final e()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 552
    const-string v0, "last_cleanup"

    invoke-direct {p0, v0}, Lio/boxcar/push/b/a/b;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v3, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 453
    const-string v3, "last_tags"

    invoke-direct {p0, v3}, Lio/boxcar/push/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, tagsStr:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 456
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 461
    .end local v2           #tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 485
    const-string v1, "last_alias"

    invoke-direct {p0, v1}, Lio/boxcar/push/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, alias:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    const/4 v0, 0x0

    .line 489
    .end local v0           #alias:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 502
    const-string v1, "last_device_name"

    invoke-direct {p0, v1}, Lio/boxcar/push/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, device:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const/4 v0, 0x0

    .line 506
    .end local v0           #device:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    .line 519
    const-string v1, "app_id"

    invoke-direct {p0, v1}, Lio/boxcar/push/b/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, appId:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 523
    .end local v0           #appId:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 99
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v2, "Creating database..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    invoke-static {p1}, Lio/boxcar/push/b/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v2, "Database created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v2, "Unable to create database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 111
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v2, "Upgrading database from version %d to version %d..."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lio/boxcar/push/b/a/a;->a(IILandroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v2, "Database successfully upgraded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lio/boxcar/push/b/a/b;->d:Ljava/lang/String;

    const-string v2, "Unable to upgrade database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
