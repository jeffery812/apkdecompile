.class Lbbc/mobile/news/VideoActivity$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/VideoActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/VideoActivity$1;->this$0:Lbbc/mobile/news/VideoActivity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 182
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->dataWarningShown(Landroid/content/Context;Z)V

    .line 183
    iget-object v0, p0, Lbbc/mobile/news/VideoActivity$1;->this$0:Lbbc/mobile/news/VideoActivity;

    #calls: Lbbc/mobile/news/VideoActivity;->loadPlaylist()V
    invoke-static {v0}, Lbbc/mobile/news/VideoActivity;->access$2(Lbbc/mobile/news/VideoActivity;)V

    .line 184
    return-void
.end method
