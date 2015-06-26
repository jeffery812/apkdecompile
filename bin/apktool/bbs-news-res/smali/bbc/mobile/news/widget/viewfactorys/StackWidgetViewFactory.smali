.class public Lbbc/mobile/news/widget/viewfactorys/StackWidgetViewFactory;
.super Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;
.source "StackWidgetViewFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getWidgetItemLayoutResource()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lbbc/mobile/news/R$layout;->widget_item_stack:I

    return v0
.end method
