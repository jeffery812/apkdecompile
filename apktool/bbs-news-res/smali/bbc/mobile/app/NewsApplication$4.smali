.class Lbbc/mobile/app/NewsApplication$4;
.super Ljava/lang/Object;
.source "NewsApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/app/NewsApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/app/NewsApplication;


# direct methods
.method constructor <init>(Lbbc/mobile/app/NewsApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/app/NewsApplication$4;->this$0:Lbbc/mobile/app/NewsApplication;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/app/NewsApplication$4;->this$0:Lbbc/mobile/app/NewsApplication;

    #calls: Lbbc/mobile/app/NewsApplication;->startPush()V
    invoke-static {v0}, Lbbc/mobile/app/NewsApplication;->access$2(Lbbc/mobile/app/NewsApplication;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method
