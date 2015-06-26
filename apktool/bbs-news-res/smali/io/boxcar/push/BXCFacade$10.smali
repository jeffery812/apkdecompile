.class final Lio/boxcar/push/BXCFacade$10;
.super Ljava/lang/Object;
.source "BXCFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/BXCFacade;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/BXCFacade;


# direct methods
.method constructor <init>(Lio/boxcar/push/BXCFacade;)V
    .locals 0
    .parameter

    .prologue
    .line 1570
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1572
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->c(Lio/boxcar/push/BXCFacade;)Ljava/lang/String;

    move-result-object v0

    .line 1573
    .local v0, token:Ljava/lang/String;
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->j(Lio/boxcar/push/BXCFacade;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1574
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v2}, Lio/boxcar/push/BXCFacade;->l(Lio/boxcar/push/BXCFacade;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lio/boxcar/push/BXCFacade;->b(Lio/boxcar/push/BXCFacade;Ljava/util/List;)Ljava/util/List;

    .line 1576
    :cond_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->m(Lio/boxcar/push/BXCFacade;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1577
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {}, Lorg/openudid/android/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/boxcar/push/BXCFacade;->b(Lio/boxcar/push/BXCFacade;Ljava/lang/String;)Ljava/lang/String;

    .line 1578
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v2}, Lio/boxcar/push/BXCFacade;->n(Lio/boxcar/push/BXCFacade;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->j(Lio/boxcar/push/BXCFacade;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1582
    :goto_0
    return-void

    .line 1580
    :cond_1
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, p0, Lio/boxcar/push/BXCFacade$10;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v2}, Lio/boxcar/push/BXCFacade;->j(Lio/boxcar/push/BXCFacade;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
