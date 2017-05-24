.class public Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageListParam"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public mBucketId:Ljava/lang/String;

.field public mInclusion:I

.field public mIsEmptyImageList:Z

.field public mLocation:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

.field public mSingleImageUri:Landroid/net/Uri;

.field public mSort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam$1;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;->values()[Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mLocation:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mInclusion:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mSort:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$1;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    const-string v0, "ImageListParam{loc=%s,inc=%d,sort=%d,bucket=%s,empty=%b,single=%s}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mLocation:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mInclusion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mSort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mLocation:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mInclusion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mSort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
