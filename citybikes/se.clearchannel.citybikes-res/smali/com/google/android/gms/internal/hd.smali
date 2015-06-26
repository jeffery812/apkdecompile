.class public final Lcom/google/android/gms/internal/hd;
.super Lcom/google/android/gms/internal/gr;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hd$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/he;


# instance fields
.field private final AM:Landroid/os/Bundle;

.field private final AN:Lcom/google/android/gms/internal/hf;

.field private final AO:Lcom/google/android/gms/maps/model/LatLng;

.field private final AP:F

.field private final AQ:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final AR:Ljava/lang/String;

.field private final AS:Landroid/net/Uri;

.field private final AT:Z

.field private final AU:F

.field private final AV:I

.field private final AW:J

.field private final AX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/gx;",
            ">;"
        }
    .end annotation
.end field

.field private final AY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/gx;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final AZ:Ljava/util/TimeZone;

.field private Ba:Ljava/util/Locale;

.field private Bb:Lcom/google/android/gms/internal/hh;

.field final kg:I

.field private final uS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/he;

    invoke-direct {v0}, Lcom/google/android/gms/internal/he;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hd;->CREATOR:Lcom/google/android/gms/internal/he;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/internal/hf;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/gx;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/hf;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "F",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "ZFIJ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/gr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hd;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hd;->uS:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/hd;->AX:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/hd;->AM:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/internal/hd;->AN:Lcom/google/android/gms/internal/hf;

    iput-object p6, p0, Lcom/google/android/gms/internal/hd;->AO:Lcom/google/android/gms/maps/model/LatLng;

    iput p7, p0, Lcom/google/android/gms/internal/hd;->AP:F

    iput-object p8, p0, Lcom/google/android/gms/internal/hd;->AQ:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p9, p0, Lcom/google/android/gms/internal/hd;->AR:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->AS:Landroid/net/Uri;

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hd;->AT:Z

    move/from16 v0, p12

    iput v0, p0, Lcom/google/android/gms/internal/hd;->AU:F

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/internal/hd;->AV:I

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/gms/internal/hd;->AW:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gx;->aq(Ljava/lang/String;)Lcom/google/android/gms/internal/gx;

    move-result-object v5

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/hd;->AY:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->AR:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/hd;->AZ:Ljava/util/TimeZone;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/hd;->Ba:Ljava/util/Locale;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/hd;->Bb:Lcom/google/android/gms/internal/hh;

    return-void
.end method

.method private ar(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->Bb:Lcom/google/android/gms/internal/hh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->Bb:Lcom/google/android/gms/internal/hh;

    new-instance v1, Lcom/google/android/gms/internal/hd$a$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->uS:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/hd$a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hh;->a(Lcom/google/android/gms/internal/hd$a$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/gx;",
            ">;"
        }
    .end annotation

    const-string v0, "getTypes"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hd;->ar(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->AX:Ljava/util/List;

    return-object v0
.end method

.method public dX()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    const-string v0, "getLatLng"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hd;->ar(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->AO:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public dY()F
    .locals 1

    const-string v0, "getLevelNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hd;->ar(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/hd;->AP:F

    return v0
.end method

.method public dZ()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    const-string v0, "getViewport"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hd;->ar(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->AQ:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hd;->CREATOR:Lcom/google/android/gms/internal/he;

    const/4 v0, 0x0

    return v0
.end method

.method public ea()Landroid/net/Uri;
    .locals 1

    const-string v0, "getWebsiteUri"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hd;->ar(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->AS:Landroid/net/Uri;

    return-object v0
.end method

.method public eb()Z
    .locals 1

    const-string v0, "isPermanentlyClosed"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hd;->ar(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hd;->AT:Z

    return v0
.end method

.method public ec()I
    .locals 1

    const-string v0, "getPriceLevel"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hd;->ar(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/hd;->AV:I

    return v0
.end method

.method public ed()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/hd;->AW:J

    return-wide v0
.end method

.method public ee()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->AM:Landroid/os/Bundle;

    return-object v0
.end method

.method public ef()Lcom/google/android/gms/internal/hf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->AN:Lcom/google/android/gms/internal/hf;

    return-object v0
.end method

.method public eg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->AR:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/hd;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/hd;

    .end local p1
    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->uS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/hd;->uS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->Ba:Ljava/util/Locale;

    iget-object v3, p1, Lcom/google/android/gms/internal/hd;->Ba:Ljava/util/Locale;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ee;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/hd;->AW:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/hd;->AW:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "getId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hd;->ar(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->uS:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    const-string v0, "getRating"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hd;->ar(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/hd;->AU:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->uS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->Ba:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/hd;->AW:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ee;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->uS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "localization"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->AN:Lcom/google/android/gms/internal/hf;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->Ba:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "latlng"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->AO:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "levelNumber"

    iget v2, p0, Lcom/google/android/gms/internal/hd;->AP:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "viewport"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->AQ:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "timeZone"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->AR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "websiteUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->AS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "isPermanentlyClosed"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hd;->AT:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "priceLevel"

    iget v2, p0, Lcom/google/android/gms/internal/hd;->AV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "timestampSecs"

    iget-wide v2, p0, Lcom/google/android/gms/internal/hd;->AW:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/hd;->CREATOR:Lcom/google/android/gms/internal/he;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/he;->a(Lcom/google/android/gms/internal/hd;Landroid/os/Parcel;I)V

    return-void
.end method
