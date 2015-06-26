.class public final Lcom/google/android/gms/internal/bw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bw$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)Lcom/google/android/gms/internal/cm;
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/bz;->ej:Lcom/google/android/gms/internal/cu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/cu;->iM:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bw;->b(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)Lcom/google/android/gms/internal/cm;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bw;->c(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)Lcom/google/android/gms/internal/cm;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)Lcom/google/android/gms/internal/cm;
    .locals 1

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/bx$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/bx$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bx$a;->start()V

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)Lcom/google/android/gms/internal/cm;
    .locals 1

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/bx$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/bx$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)V

    goto :goto_0
.end method
