.class public Lcom/google/android/gms/fitness/ViewDataIntentBuilder;
.super Ljava/lang/Object;


# instance fields
.field private KL:J

.field private Sh:Lcom/google/android/gms/fitness/data/DataSource;

.field private Si:J

.field private Sj:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private i(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->Sj:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Data source must be set"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->KL:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Start time must be set"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->Si:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->KL:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    :goto_2
    const-string v0, "End time must be set and after start time"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/n;->a(ZLjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "vnd.google.fitness.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/FitnessIntents;->getDataTypeMimeType(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.google.fitness.start_time"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->KL:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "vnd.google.fitness.end_time"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->Si:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    const-string v2, "vnd.google.fitness.data_source"

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->i(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/ViewDataIntentBuilder;
    .locals 0
    .parameter "dataSource"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->Sh:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public setPreferredApplication(Ljava/lang/String;)Lcom/google/android/gms/fitness/ViewDataIntentBuilder;
    .locals 0
    .parameter "packageName"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeInterval(JJ)Lcom/google/android/gms/fitness/ViewDataIntentBuilder;
    .locals 1
    .parameter "startTimeMillis"
    .parameter "endTimeMillis"

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->KL:J

    iput-wide p3, p0, Lcom/google/android/gms/fitness/ViewDataIntentBuilder;->Si:J

    return-object p0
.end method
