.class Lbbc/mobile/news/WidgetConfigActivity$1;
.super Ljava/lang/Object;
.source "WidgetConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/WidgetConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/WidgetConfigActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/WidgetConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/WidgetConfigActivity$1;->this$0:Lbbc/mobile/news/WidgetConfigActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity$1;->this$0:Lbbc/mobile/news/WidgetConfigActivity;

    const/4 v1, 0x1

    #calls: Lbbc/mobile/news/WidgetConfigActivity;->setResultAndFinish(Z)V
    invoke-static {v0, v1}, Lbbc/mobile/news/WidgetConfigActivity;->access$0(Lbbc/mobile/news/WidgetConfigActivity;Z)V

    .line 172
    return-void
.end method
