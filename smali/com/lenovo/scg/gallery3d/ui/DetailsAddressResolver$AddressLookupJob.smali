.class Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressLookupJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private mLatlng:[D

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;


# direct methods
.method protected constructor <init>(Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;[D)V
    .locals 0
    .param p2, "latlng"    # [D

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    .line 49
    return-void
.end method


# virtual methods
.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/location/Address;
    .locals 7
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v6, 0x1

    .line 53
    new-instance v1, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;->mContext:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;->access$000(Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, "geocoder":Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    aget-wide v4, v0, v6

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method
