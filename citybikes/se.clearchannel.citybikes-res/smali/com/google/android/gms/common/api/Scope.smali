.class public final Lcom/google/android/gms/common/api/Scope;
.super Ljava/lang/Object;


# instance fields
.field private final nz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "scopeUri"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/Scope;->nz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public br()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Scope;->nz:Ljava/lang/String;

    return-object v0
.end method
