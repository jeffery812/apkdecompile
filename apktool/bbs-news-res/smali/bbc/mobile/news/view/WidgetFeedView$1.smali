.class Lbbc/mobile/news/view/WidgetFeedView$1;
.super Ljava/lang/Object;
.source "WidgetFeedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/WidgetFeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/WidgetFeedView;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/WidgetFeedView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/WidgetFeedView$1;->this$0:Lbbc/mobile/news/view/WidgetFeedView;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 66
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView$1;->this$0:Lbbc/mobile/news/view/WidgetFeedView;

    #calls: Lbbc/mobile/news/view/WidgetFeedView;->onViewSelected(Landroid/view/View;)V
    invoke-static {v0, p1}, Lbbc/mobile/news/view/WidgetFeedView;->access$0(Lbbc/mobile/news/view/WidgetFeedView;Landroid/view/View;)V

    .line 67
    return-void
.end method
