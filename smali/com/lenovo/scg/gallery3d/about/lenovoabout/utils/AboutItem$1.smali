.class final Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem$1;
.super Ljava/lang/Object;
.source "AboutItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 146
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 150
    new-array v0, p1, [Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem$1;->newArray(I)[Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;

    move-result-object v0

    return-object v0
.end method
