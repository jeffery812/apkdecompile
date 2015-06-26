.class Lbbc/mobile/news/NewsFragment$4;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/NewsFragment;->initActionModeCallback()Landroid/view/ActionMode$Callback;
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
    iput-object p1, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    const/4 v4, 0x1

    .line 616
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v0}, Lbbc/mobile/news/NewsFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->getActionModeProvider()Lbbc/mobile/news/helper/ActionModeProvider;

    move-result-object v7

    .line 617
    .local v7, actionModeProvider:Lbbc/mobile/news/helper/ActionModeProvider;
    invoke-virtual {v7}, Lbbc/mobile/news/helper/ActionModeProvider;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v2

    .line 618
    .local v2, category:Lbbc/mobile/news/model/Category;
    invoke-virtual {v7}, Lbbc/mobile/news/helper/ActionModeProvider;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v3

    .line 619
    .local v3, article:Lbbc/mobile/news/model/Article;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    .line 621
    .local v9, id:I
    const/4 v8, 0x0

    .line 623
    .local v8, handled:Z
    invoke-virtual {v7}, Lbbc/mobile/news/helper/ActionModeProvider;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 646
    :goto_0
    return v0

    .line 625
    :cond_0
    sget v0, Lbbc/mobile/news/R$id;->menuViewArticle:I

    if-ne v9, v0, :cond_1

    .line 627
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    iget-object v1, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v1}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v6, 0x5

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lbbc/mobile/news/NewsFragment;->onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;ZZI)V

    .line 628
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 629
    const/4 v8, 0x1

    .line 630
    const-string v0, "Action_Mode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onActionItemClicked() \"viewArticle\" clickHandled:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 631
    goto :goto_0

    .line 633
    :cond_1
    sget v0, Lbbc/mobile/news/R$id;->menuShareArticle:I

    if-ne v9, v0, :cond_2

    .line 635
    new-instance v10, Lbbc/mobile/news/util/ShareHelper;

    invoke-direct {v10}, Lbbc/mobile/news/util/ShareHelper;-><init>()V

    .line 636
    .local v10, shareHelper:Lbbc/mobile/news/util/ShareHelper;
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v10, v3, v0}, Lbbc/mobile/news/util/ShareHelper;->shareArticle(Lbbc/mobile/news/model/Article;Landroid/app/Activity;)V

    .line 637
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 638
    const/4 v8, 0x1

    .line 639
    const-string v0, "Action_Mode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onActionItemClicked() \"shareArticle\" clickHandled:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 640
    goto :goto_0

    .line 643
    .end local v10           #shareHelper:Lbbc/mobile/news/util/ShareHelper;
    :cond_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 644
    const/4 v8, 0x0

    .line 645
    const-string v0, "Action_Mode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onActionItemClicked() \"UNKNOWN-CLICK\" clickHandled:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 646
    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "actionMode"
    .parameter "menu"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v1}, Lbbc/mobile/news/NewsFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/BaseActivity;->getActionModeProvider()Lbbc/mobile/news/helper/ActionModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/helper/ActionModeProvider;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 583
    .local v0, created:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 584
    const-string v1, "Article selection"

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 587
    :cond_0
    const-string v1, "Action_Mode"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreateActionMode() created:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return v0

    .line 581
    .end local v0           #created:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .parameter "actionMode"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v2}, Lbbc/mobile/news/NewsFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    .line 655
    .local v0, activity:Lbbc/mobile/news/BaseActivity;
    const-string v2, "Action_Mode"

    const-string v3, "onDestroyActionMode()"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->getActionModeProvider()Lbbc/mobile/news/helper/ActionModeProvider;

    move-result-object v1

    .line 661
    .local v1, provider:Lbbc/mobile/news/helper/ActionModeProvider;
    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {v1}, Lbbc/mobile/news/helper/ActionModeProvider;->onFinish()V

    .line 663
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v2, v1}, Lbbc/mobile/news/NewsFragment;->setActionModeSelection(Lbbc/mobile/news/helper/ActionModeProvider;)V

    .line 666
    .end local v1           #provider:Lbbc/mobile/news/helper/ActionModeProvider;
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 594
    iget-object v4, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v4}, Lbbc/mobile/news/NewsFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/BaseActivity;->getActionModeProvider()Lbbc/mobile/news/helper/ActionModeProvider;

    move-result-object v0

    .line 595
    .local v0, actionModeProvider:Lbbc/mobile/news/helper/ActionModeProvider;
    invoke-virtual {v0}, Lbbc/mobile/news/helper/ActionModeProvider;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v1

    .line 597
    .local v1, article:Lbbc/mobile/news/model/Article;
    const/4 v3, 0x0

    .line 599
    .local v3, prepared:Z
    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {v1}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 601
    invoke-virtual {v0, p1}, Lbbc/mobile/news/helper/ActionModeProvider;->setActionMode(Landroid/view/ActionMode;)V

    .line 602
    iget-object v4, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v4, v0}, Lbbc/mobile/news/NewsFragment;->setActionModeSelection(Lbbc/mobile/news/helper/ActionModeProvider;)V

    .line 603
    iget-object v4, p0, Lbbc/mobile/news/NewsFragment$4;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v4}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 604
    .local v2, inflater:Landroid/view/MenuInflater;
    sget v4, Lbbc/mobile/news/R$menu;->news_context_menu:I

    invoke-virtual {v2, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 605
    const/4 v3, 0x1

    .line 610
    .end local v2           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const-string v4, "Action_Mode"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPrepareActionMode() prepared:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return v3
.end method
