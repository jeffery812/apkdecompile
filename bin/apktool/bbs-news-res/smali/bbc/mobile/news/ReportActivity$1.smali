.class Lbbc/mobile/news/ReportActivity$1;
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
    iput-object p1, p0, Lbbc/mobile/news/ReportActivity$1;->this$0:Lbbc/mobile/news/ReportActivity;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 588
    check-cast p1, Lbbc/mobile/news/view/ShareItemView;

    .end local p1
    invoke-virtual {p1}, Lbbc/mobile/news/view/ShareItemView;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 589
    .local v0, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 590
    iget-object v1, p0, Lbbc/mobile/news/ReportActivity$1;->this$0:Lbbc/mobile/news/ReportActivity;

    iget-object v2, p0, Lbbc/mobile/news/ReportActivity$1;->this$0:Lbbc/mobile/news/ReportActivity;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #calls: Lbbc/mobile/news/ReportActivity;->getSendIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v2, v3, v4}, Lbbc/mobile/news/ReportActivity;->access$0(Lbbc/mobile/news/ReportActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    #calls: Lbbc/mobile/news/ReportActivity;->sendMessage(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lbbc/mobile/news/ReportActivity;->access$1(Lbbc/mobile/news/ReportActivity;Landroid/content/Intent;)V

    .line 591
    iget-object v1, p0, Lbbc/mobile/news/ReportActivity$1;->this$0:Lbbc/mobile/news/ReportActivity;

    #getter for: Lbbc/mobile/news/ReportActivity;->mShareListDialog:Lbbc/mobile/news/dialog/ShareListDialog;
    invoke-static {v1}, Lbbc/mobile/news/ReportActivity;->access$2(Lbbc/mobile/news/ReportActivity;)Lbbc/mobile/news/dialog/ShareListDialog;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/dialog/ShareListDialog;->hide()V

    .line 593
    :cond_0
    return-void
.end method
