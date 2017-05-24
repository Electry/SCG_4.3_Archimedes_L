.class public Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
.super Ljava/lang/Object;
.source "BackgroundDataItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isSelected:Z

.field private thumbnailRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem$1;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->thumbnailRes:I

    return p1
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->isSelected:Z

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbnailRes()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->thumbnailRes:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->isSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->isSelected:Z

    .line 32
    return-void
.end method

.method public setThumbnailRes(I)V
    .locals 0
    .param p1, "thumbnailRes"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->thumbnailRes:I

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 42
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->thumbnailRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/data/BackgroundDataItem;->isSelected:Z

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
