.class Lbbc/mobile/news/video/VideoActivity$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/video/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/video/VideoActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/video/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/video/VideoActivity$1;->this$0:Lbbc/mobile/news/video/VideoActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 103
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->dataWarningShown(Landroid/content/Context;Z)V

    .line 104
    iget-object v0, p0, Lbbc/mobile/news/video/VideoActivity$1;->this$0:Lbbc/mobile/news/video/VideoActivity;

    const/4 v1, 0x0

    #calls: Lbbc/mobile/news/video/VideoActivity;->requestConfig(I)V
    invoke-static {v0, v1}, Lbbc/mobile/news/video/VideoActivity;->access$0(Lbbc/mobile/news/video/VideoActivity;I)V

    .line 105
    return-void
.end method
