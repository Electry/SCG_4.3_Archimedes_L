.class final Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem$1;
.super Ljava/lang/Object;
.source "BackgroundDataItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 54
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;-><init>()V

    .line 55
    .local v0, "frameImagedata":Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->thumbnailRes:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->access$002(Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;I)I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    # setter for: Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->isSelected:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->access$102(Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;Z)Z

    .line 57
    return-object v0

    .line 56
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 62
    new-array v0, p1, [Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem$1;->newArray(I)[Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;

    move-result-object v0

    return-object v0
.end method
