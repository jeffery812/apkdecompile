.class Lbbc/mobile/news/util/ShareHelper$1;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/util/ShareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/util/ShareHelper;


# direct methods
.method constructor <init>(Lbbc/mobile/news/util/ShareHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/util/ShareHelper$1;->this$0:Lbbc/mobile/news/util/ShareHelper;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 105
    .local v0, id:I
    sget v1, Lbbc/mobile/news/R$id;->shareButton:I

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lbbc/mobile/news/util/ShareHelper$1;->this$0:Lbbc/mobile/news/util/ShareHelper;

    iget-object v2, p0, Lbbc/mobile/news/util/ShareHelper$1;->this$0:Lbbc/mobile/news/util/ShareHelper;

    #getter for: Lbbc/mobile/news/util/ShareHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lbbc/mobile/news/util/ShareHelper;->access$0(Lbbc/mobile/news/util/ShareHelper;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lbbc/mobile/news/util/ShareHelper$1;->this$0:Lbbc/mobile/news/util/ShareHelper;

    #getter for: Lbbc/mobile/news/util/ShareHelper;->mArticle:Lbbc/mobile/news/model/Article;
    invoke-static {v3}, Lbbc/mobile/news/util/ShareHelper;->access$1(Lbbc/mobile/news/util/ShareHelper;)Lbbc/mobile/news/model/Article;

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lbbc/mobile/news/util/ShareHelper;->share(Landroid/app/Activity;Lbbc/mobile/news/model/Article;Landroid/content/Intent;)V
    invoke-static {v1, v2, v3, v4}, Lbbc/mobile/news/util/ShareHelper;->access$2(Lbbc/mobile/news/util/ShareHelper;Landroid/app/Activity;Lbbc/mobile/news/model/Article;Landroid/content/Intent;)V

    .line 107
    iget-object v1, p0, Lbbc/mobile/news/util/ShareHelper$1;->this$0:Lbbc/mobile/news/util/ShareHelper;

    #getter for: Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;
    invoke-static {v1}, Lbbc/mobile/news/util/ShareHelper;->access$3(Lbbc/mobile/news/util/ShareHelper;)Lbbc/mobile/news/dialog/InterstitialShareDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lbbc/mobile/news/util/ShareHelper$1;->this$0:Lbbc/mobile/news/util/ShareHelper;

    #getter for: Lbbc/mobile/news/util/ShareHelper;->mInterDialog:Lbbc/mobile/news/dialog/InterstitialShareDialog;
    invoke-static {v1}, Lbbc/mobile/news/util/ShareHelper;->access$3(Lbbc/mobile/news/util/ShareHelper;)Lbbc/mobile/news/dialog/InterstitialShareDialog;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->dismiss()V

    .line 110
    :cond_0
    return-void
.end method
