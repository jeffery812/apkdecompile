.class public final Lcom/google/android/gms/internal/bv;
.super Lcom/google/android/gms/internal/cm;

# interfaces
.implements Lcom/google/android/gms/internal/bw$a;
.implements Lcom/google/android/gms/internal/cx$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bv$a;
    }
.end annotation


# instance fields
.field private final ed:Lcom/google/android/gms/internal/bb;

.field private final fx:Ljava/lang/Object;

.field private fy:Lcom/google/android/gms/internal/au;

.field private final gv:Lcom/google/android/gms/internal/cw;

.field private final hb:Lcom/google/android/gms/internal/bu$a;

.field private final hc:Ljava/lang/Object;

.field private final hd:Lcom/google/android/gms/internal/bz$a;

.field private final he:Lcom/google/android/gms/internal/h;

.field private hf:Lcom/google/android/gms/internal/cm;

.field private hg:Lcom/google/android/gms/internal/cb;

.field private hh:Z

.field private hi:Lcom/google/android/gms/internal/as;

.field private hj:Lcom/google/android/gms/internal/ay;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/bz$a;Lcom/google/android/gms/internal/h;Lcom/google/android/gms/internal/cw;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/bu$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/cm;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->hc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->fx:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bv;->hh:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/bv;->ed:Lcom/google/android/gms/internal/bb;

    iput-object p6, p0, Lcom/google/android/gms/internal/bv;->hb:Lcom/google/android/gms/internal/bu$a;

    iput-object p4, p0, Lcom/google/android/gms/internal/bv;->gv:Lcom/google/android/gms/internal/cw;

    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bv;->hd:Lcom/google/android/gms/internal/bz$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/bv;->he:Lcom/google/android/gms/internal/h;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/bz;)Lcom/google/android/gms/internal/x;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/bv$a;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v0, v0, Lcom/google/android/gms/internal/cb;->hB:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v0, v0, Lcom/google/android/gms/internal/cb;->hB:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v2, v2, Lcom/google/android/gms/internal/cb;->hB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/internal/bz;->em:Lcom/google/android/gms/internal/x;

    iget-object v6, v0, Lcom/google/android/gms/internal/x;->eH:[Lcom/google/android/gms/internal/x;

    array-length v7, v6

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/internal/x;->width:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    iget v0, v8, Lcom/google/android/gms/internal/x;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    iget v9, v8, Lcom/google/android/gms/internal/x;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    iget v9, v8, Lcom/google/android/gms/internal/x;->heightPixels:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_2
    if-ne v4, v0, :cond_4

    if-ne v5, v1, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/x;

    iget-object v1, p1, Lcom/google/android/gms/internal/bz;->em:Lcom/google/android/gms/internal/x;

    iget-object v1, v1, Lcom/google/android/gms/internal/x;->eH:[Lcom/google/android/gms/internal/x;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/internal/x;[Lcom/google/android/gms/internal/x;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v2, v2, Lcom/google/android/gms/internal/cb;->hB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget v0, v8, Lcom/google/android/gms/internal/x;->width:I

    goto :goto_1

    :cond_3
    iget v1, v8, Lcom/google/android/gms/internal/x;->height:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v2, v2, Lcom/google/android/gms/internal/cb;->hB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bv;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->fx:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/bz;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/bv$a;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->hc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/as;

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/bv;->ed:Lcom/google/android/gms/internal/bb;

    iget-object v4, p0, Lcom/google/android/gms/internal/bv;->fy:Lcom/google/android/gms/internal/au;

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/google/android/gms/internal/as;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/au;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->hi:Lcom/google/android/gms/internal/as;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hi:Lcom/google/android/gms/internal/as;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/google/android/gms/internal/as;->a(JJ)Lcom/google/android/gms/internal/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    iget v0, v0, Lcom/google/android/gms/internal/ay;->ga:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mediation result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    iget v2, v2, Lcom/google/android/gms/internal/ay;->ga:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private aj()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/bv$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget v0, v0, Lcom/google/android/gms/internal/cb;->errorCode:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v0, v0, Lcom/google/android/gms/internal/cb;->hw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/cb;->hy:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/au;

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v1, v1, Lcom/google/android/gms/internal/cb;->hw:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/au;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->fy:Lcom/google/android/gms/internal/au;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse mediation config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v2, v2, Lcom/google/android/gms/internal/cb;->hw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/internal/bu$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hb:Lcom/google/android/gms/internal/bu$a;

    return-object v0
.end method

.method private b(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/bv$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/cs;->iI:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bv$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bv$3;-><init>(Lcom/google/android/gms/internal/bv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/bv;->d(J)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/internal/cb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    return-object v0
.end method

.method private c(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/bv$a;
        }
    .end annotation

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/bv;->e(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    const-string v1, "Timed out waiting for ad response."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->hc:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->hf:Lcom/google/android/gms/internal/cm;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget v0, v0, Lcom/google/android/gms/internal/cb;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget v0, v0, Lcom/google/android/gms/internal/cb;->errorCode:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget v2, v2, Lcom/google/android/gms/internal/cb;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget v2, v2, Lcom/google/android/gms/internal/cb;->errorCode:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/internal/cw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->gv:Lcom/google/android/gms/internal/cw;

    return-object v0
.end method

.method private d(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/bv$a;
        }
    .end annotation

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/bv;->e(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    const-string v1, "Timed out waiting for WebView to finish loading."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bv;->hh:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method private e(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/bv$a;
        }
    .end annotation

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->fx:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/bv$a;

    const-string v1, "Ad request cancelled."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/cb;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->fx:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/cw;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "WebView finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bv;->hh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->fx:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ai()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bv;->fx:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_0
    const-string v2, "AdLoaderBackgroundTask started."

    invoke-static {v2}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/bv;->he:Lcom/google/android/gms/internal/h;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/h;->g()Lcom/google/android/gms/internal/d;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/bv;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Lcom/google/android/gms/internal/bz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/bv;->hd:Lcom/google/android/gms/internal/bz$a;

    invoke-direct {v12, v3, v2}, Lcom/google/android/gms/internal/bz;-><init>(Lcom/google/android/gms/internal/bz$a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v6, -0x2

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/bv;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v2, v12, v0}, Lcom/google/android/gms/internal/bw;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)Lcom/google/android/gms/internal/cm;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/bv;->hc:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/gms/internal/bv$a; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/bv;->hf:Lcom/google/android/gms/internal/cm;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/bv;->hf:Lcom/google/android/gms/internal/cm;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/bv$a;

    const-string v4, "Could not start the ad request service."

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/internal/bv$a;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/android/gms/internal/bv$a; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/bv$a;->getErrorCode()I

    move-result v6

    const/4 v4, 0x3

    if-eq v6, v4, :cond_0

    const/4 v4, -0x1

    if-ne v6, v4, :cond_4

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/bv$a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ct;->t(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/cb;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/cb;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    sget-object v2, Lcom/google/android/gms/internal/cs;->iI:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/bv$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/bv$1;-><init>(Lcom/google/android/gms/internal/bv;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v21, v3

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/cj;

    iget-object v3, v12, Lcom/google/android/gms/internal/bz;->hr:Lcom/google/android/gms/internal/v;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/bv;->gv:Lcom/google/android/gms/internal/cw;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v5, v5, Lcom/google/android/gms/internal/cb;->fK:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v7, v7, Lcom/google/android/gms/internal/cb;->fL:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-object v8, v8, Lcom/google/android/gms/internal/cb;->hA:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget v9, v9, Lcom/google/android/gms/internal/cb;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-wide v10, v10, Lcom/google/android/gms/internal/cb;->fO:J

    iget-object v12, v12, Lcom/google/android/gms/internal/bz;->hu:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-boolean v13, v13, Lcom/google/android/gms/internal/cb;->hy:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    iget-object v14, v14, Lcom/google/android/gms/internal/ay;->gb:Lcom/google/android/gms/internal/at;

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    iget-object v15, v15, Lcom/google/android/gms/internal/ay;->gc:Lcom/google/android/gms/internal/bc;

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->gd:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bv;->fy:Lcom/google/android/gms/internal/au;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bv;->hj:Lcom/google/android/gms/internal/ay;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->ge:Lcom/google/android/gms/internal/aw;

    move-object/from16 v18, v0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/gms/internal/cb;->hz:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/internal/cb;->hx:J

    move-wide/from16 v22, v0

    invoke-direct/range {v2 .. v23}, Lcom/google/android/gms/internal/cj;-><init>(Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/cw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/at;Lcom/google/android/gms/internal/bc;Ljava/lang/String;Lcom/google/android/gms/internal/au;Lcom/google/android/gms/internal/aw;JLcom/google/android/gms/internal/x;J)V

    sget-object v3, Lcom/google/android/gms/internal/cs;->iI:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/bv$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/bv$2;-><init>(Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/cj;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :cond_1
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/bv;->c(J)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/bv;->aj()V

    iget-object v2, v12, Lcom/google/android/gms/internal/bz;->em:Lcom/google/android/gms/internal/x;

    iget-object v2, v2, Lcom/google/android/gms/internal/x;->eH:[Lcom/google/android/gms/internal/x;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/internal/bz;)Lcom/google/android/gms/internal/x;

    move-result-object v3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/bv;->hg:Lcom/google/android/gms/internal/cb;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/cb;->hy:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v5}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/internal/bz;J)V

    :goto_6
    move-object/from16 v21, v3

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/bv;->b(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/google/android/gms/internal/bv$a; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    :cond_4
    :try_start_8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/bv$a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ct;->v(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_8
    const/16 v18, 0x0

    goto :goto_5
.end method

.method public onStop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->hc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hf:Lcom/google/android/gms/internal/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hf:Lcom/google/android/gms/internal/cm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cm;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->gv:Lcom/google/android/gms/internal/cw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cw;->stopLoading()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->gv:Lcom/google/android/gms/internal/cw;

    invoke-static {v0}, Lcom/google/android/gms/internal/co;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hi:Lcom/google/android/gms/internal/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->hi:Lcom/google/android/gms/internal/as;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/as;->cancel()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
