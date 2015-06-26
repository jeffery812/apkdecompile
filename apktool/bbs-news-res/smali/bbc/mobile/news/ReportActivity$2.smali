.class Lbbc/mobile/news/ReportActivity$2;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/ReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/ReportActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/ReportActivity$2;->this$0:Lbbc/mobile/news/ReportActivity;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 601
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$2;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;
    invoke-static {v0}, Lbbc/mobile/news/ReportActivity;->access$2(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ShareListDialog;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/dialog/ShareListDialog;->isShowingAllShared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$2;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;
    invoke-static {v0}, Lbbc/mobile/news/ReportActivity;->access$2(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ShareListDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lbbc/mobile/news/dialog/ShareListDialog;->setShowingAll(Z)V

    .line 603
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$2;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;
    invoke-static {v0}, Lbbc/mobile/news/ReportActivity;->access$2(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ShareListDialog;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/ReportActivity$2;->this$0:Lbbc/mobile/news/ReportActivity;

    iget-object v2, p0, Lbbc/mobile/news/ReportActivity$2;->this$0:Lbbc/mobile/news/ReportActivity;

    #calls: Lbbc/mobile/news/ReportActivity;->getSendIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v2, v3, v3}, Lbbc/mobile/news/ReportActivity;->access$0(Lbbc/mobile/news/ReportActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    #calls: Lbbc/mobile/news/ReportActivity;->getShareList(Landroid/content/Intent;Z)Ljava/util/List;
    invoke-static {v1, v2, v4}, Lbbc/mobile/news/ReportActivity;->access$3(Lbbc/mobile/news/ReportActivity;Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/dialog/ShareListDialog;->setData(Ljava/util/List;)V

    .line 609
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$2;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;
    invoke-static {v0}, Lbbc/mobile/news/ReportActivity;->access$2(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ShareListDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Lbbc/mobile/news/dialog/ShareListDialog;->setShowingAll(Z)V

    .line 607
    iget-object v0, p0, Lbbc/mobile/news/ReportActivity$2;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;
    invoke-static {v0}, Lbbc/mobile/news/ReportActivity;->access$2(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ShareListDialog;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/ReportActivity$2;->this$0:Lbbc/mobile/news/ReportActivity;

    iget-object v2, p0, Lbbc/mobile/news/ReportActivity$2;->this$0:Lbbc/mobile/news/ReportActivity;

    #calls: Lbbc/mobile/news/ReportActivity;->getSendIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v2, v3, v3}, Lbbc/mobile/news/ReportActivity;->access$0(Lbbc/mobile/news/ReportActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    #calls: Lbbc/mobile/news/ReportActivity;->getShareList(Landroid/content/Intent;Z)Ljava/util/List;
    invoke-static {v1, v2, v5}, Lbbc/mobile/news/ReportActivity;->access$3(Lbbc/mobile/news/ReportActivity;Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/dialog/ShareListDialog;->setData(Ljava/util/List;)V

    goto :goto_0
.end method
