.class final Lio/boxcar/push/b/a/b$a;
.super Lio/boxcar/push/b/b$a;
.source "SQLiteStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/boxcar/push/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/b/a/b;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lio/boxcar/push/b/a/b;Z)V
    .locals 0
    .parameter
    .parameter "readOnly"

    .prologue
    .line 68
    iput-object p1, p0, Lio/boxcar/push/b/a/b$a;->a:Lio/boxcar/push/b/a/b;

    invoke-direct {p0}, Lio/boxcar/push/b/b$a;-><init>()V

    .line 69
    iput-boolean p2, p0, Lio/boxcar/push/b/a/b$a;->c:Z

    .line 70
    iput-boolean p2, p0, Lio/boxcar/push/b/a/b$a;->b:Z

    .line 71
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/boxcar/push/b/a/b$a;->b:Z

    .line 75
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lio/boxcar/push/b/a/b$a;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lio/boxcar/push/b/a/b$a;->c:Z

    return v0
.end method
