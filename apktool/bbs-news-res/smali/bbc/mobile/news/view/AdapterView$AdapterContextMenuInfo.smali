.class public Lbbc/mobile/news/view/AdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .parameter "targetView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lbbc/mobile/news/view/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 392
    iput p2, p0, Lbbc/mobile/news/view/AdapterView$AdapterContextMenuInfo;->position:I

    .line 393
    iput-wide p3, p0, Lbbc/mobile/news/view/AdapterView$AdapterContextMenuInfo;->id:J

    .line 394
    return-void
.end method
