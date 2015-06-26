.class public Lio/boxcar/push/util/RestResponse;
.super Ljava/lang/Object;
.source "RestResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/boxcar/push/util/RestResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lio/boxcar/push/util/RestResponse$1;

    invoke-direct {v0}, Lio/boxcar/push/util/RestResponse$1;-><init>()V

    sput-object v0, Lio/boxcar/push/util/RestResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "responseCode"
    .parameter "errorMessage"
    .parameter "response"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lio/boxcar/push/util/RestResponse;->a:I

    .line 36
    iput-object p2, p0, Lio/boxcar/push/util/RestResponse;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lio/boxcar/push/util/RestResponse;->c:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lio/boxcar/push/util/RestResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/boxcar/push/util/RestResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/boxcar/push/util/RestResponse;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "i"

    .prologue
    .line 65
    iget v0, p0, Lio/boxcar/push/util/RestResponse;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lio/boxcar/push/util/RestResponse;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lio/boxcar/push/util/RestResponse;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lio/boxcar/push/util/RestResponse;->b:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lio/boxcar/push/util/RestResponse;->c:Ljava/lang/String;

    goto :goto_1
.end method
