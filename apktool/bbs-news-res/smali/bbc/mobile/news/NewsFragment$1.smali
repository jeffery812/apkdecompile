.class Lbbc/mobile/news/NewsFragment$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/NewsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/NewsFragment;


# direct methods
.method constructor <init>(Lbbc/mobile/news/NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/NewsFragment$1;->this$0:Lbbc/mobile/news/NewsFragment;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    .line 180
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment$1;->this$0:Lbbc/mobile/news/NewsFragment;

    iget-object v0, v0, Lbbc/mobile/news/NewsFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v0}, Lbbc/mobile/news/adverts/AdManager;->getAdHolderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 181
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment$1;->this$0:Lbbc/mobile/news/NewsFragment;

    iget-object v0, v0, Lbbc/mobile/news/NewsFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    iget-object v1, p0, Lbbc/mobile/news/NewsFragment$1;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v1}, Lbbc/mobile/news/NewsFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v1

    const-string v2, "homepage"

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lbbc/mobile/news/adverts/AdManager;->requestAdd(Lbbc/mobile/news/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    return v0
.end method
