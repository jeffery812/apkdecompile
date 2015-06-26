.class public final Lio/boxcar/push/b/a/a;
.super Ljava/lang/Object;
.source "Compatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/boxcar/push/b/a/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/boxcar/push/b/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    sput-object v0, Lio/boxcar/push/b/a/a;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lio/boxcar/push/b/a/d;

    invoke-direct {v2}, Lio/boxcar/push/b/a/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static a(IILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "oldVersion"
    .parameter "newVersion"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v1, Lio/boxcar/push/b/a/a;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/b/a/a$a;

    .line 45
    .local v0, strategy:Lio/boxcar/push/b/a/a$a;
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lio/boxcar/push/b/a/d;

    .end local v0           #strategy:Lio/boxcar/push/b/a/a$a;
    invoke-direct {v0}, Lio/boxcar/push/b/a/d;-><init>()V

    .line 49
    .restart local v0       #strategy:Lio/boxcar/push/b/a/a$a;
    :cond_0
    invoke-interface {v0, p0, p2}, Lio/boxcar/push/b/a/a$a;->b(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    sget-object v1, Lio/boxcar/push/b/a/a;->a:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/b/a/a$a;

    .line 33
    .local v0, strategy:Lio/boxcar/push/b/a/a$a;
    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lio/boxcar/push/b/a/d;

    .end local v0           #strategy:Lio/boxcar/push/b/a/a$a;
    invoke-direct {v0}, Lio/boxcar/push/b/a/d;-><init>()V

    .line 37
    .restart local v0       #strategy:Lio/boxcar/push/b/a/a$a;
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1, p0}, Lio/boxcar/push/b/a/a$a;->a(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    return-void
.end method
