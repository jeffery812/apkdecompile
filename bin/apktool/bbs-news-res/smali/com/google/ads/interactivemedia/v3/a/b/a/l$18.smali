.class final Lcom/google/ads/interactivemedia/v3/a/b/a/l$18;
.super Lcom/google/ads/interactivemedia/v3/a/w;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/a/w",
        "<",
        "Lcom/google/ads/interactivemedia/v3/a/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/d/c;Lcom/google/ads/interactivemedia/v3/a/l;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->f()Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 706
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/l;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 684
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/l;->m()Lcom/google/ads/interactivemedia/v3/a/q;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0

    .line 687
    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 688
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Z)Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0

    .line 690
    :cond_3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0

    .line 693
    :cond_4
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/l;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 694
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->b()Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 695
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/l;->l()Lcom/google/ads/interactivemedia/v3/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    .line 696
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/l$18;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Lcom/google/ads/interactivemedia/v3/a/l;)V

    goto :goto_1

    .line 698
    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->c()Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0

    .line 700
    :cond_6
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/l;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 701
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->d()Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 702
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/l;->k()Lcom/google/ads/interactivemedia/v3/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/o;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 703
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 704
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/l$18;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Lcom/google/ads/interactivemedia/v3/a/l;)V

    goto :goto_2

    .line 706
    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->e()Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto/16 :goto_0

    .line 709
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Lcom/google/ads/interactivemedia/v3/a/l;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$26;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 646
    :pswitch_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/q;-><init>(Ljava/lang/String;)V

    .line 670
    :goto_0
    return-object v0

    .line 648
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 649
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/q;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/b/f;

    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/a/b/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/q;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 651
    :pswitch_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/q;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 653
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->j()V

    .line 654
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/n;->a:Lcom/google/ads/interactivemedia/v3/a/n;

    goto :goto_0

    .line 656
    :pswitch_4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/i;-><init>()V

    .line 657
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a()V

    .line 658
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/l$18;->b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Lcom/google/ads/interactivemedia/v3/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/l;)V

    goto :goto_1

    .line 661
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b()V

    goto :goto_0

    .line 664
    :pswitch_5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/o;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/o;-><init>()V

    .line 665
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->c()V

    .line 666
    :goto_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/l$18;->b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Lcom/google/ads/interactivemedia/v3/a/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/o;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/l;)V

    goto :goto_2

    .line 669
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->d()V

    goto :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/l$18;->b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Lcom/google/ads/interactivemedia/v3/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    check-cast p2, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/b/a/l$18;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Lcom/google/ads/interactivemedia/v3/a/l;)V

    return-void
.end method
