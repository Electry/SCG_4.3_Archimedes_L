.class public Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
.super Ljava/lang/Object;
.source "CloudAlbum.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumCount:I

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumName:Ljava/lang/String;

.field private mAlbumOutsideUrl:Ljava/lang/String;

.field private mAlbumVersion:J

.field private mIsSelect:Z

.field private mPhotosCount:I

.field private mPosterUri:Ljava/lang/String;

.field private mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum$1;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumName:Ljava/lang/String;

    .line 22
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumVersion:J

    .line 24
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumCount:I

    .line 26
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPhotosCount:I

    .line 28
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPosterUri:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumOutsideUrl:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mIsSelect:Z

    .line 34
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mSize:J

    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPosterUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumOutsideUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumVersion:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mSize:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPhotosCount:I

    return p1
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mSize:J

    return-wide v0
.end method

.method public getmAlbumCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumCount:I

    return v0
.end method

.method public getmAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlbumOutsideUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumOutsideUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlbumVersion()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumVersion:J

    return-wide v0
.end method

.method public getmIsSelect()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mIsSelect:Z

    return v0
.end method

.method public getmPhotosCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPhotosCount:I

    return v0
.end method

.method public getmPosterUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPosterUri:Ljava/lang/String;

    return-object v0
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mSize:J

    .line 110
    return-void
.end method

.method public setmAlbumCount(I)V
    .locals 0
    .param p1, "mAlbumCount"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumCount:I

    .line 58
    return-void
.end method

.method public setmAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlbumId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setmAlbumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlbumName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setmAlbumOutsideUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlbumOutsideUrl"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumOutsideUrl:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setmAlbumVersion(J)V
    .locals 1
    .param p1, "mAlbumVersion"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumVersion:J

    .line 102
    return-void
.end method

.method public setmIsSelect(Z)V
    .locals 0
    .param p1, "mIsSelect"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mIsSelect:Z

    .line 82
    return-void
.end method

.method public setmPhotosCount(I)V
    .locals 0
    .param p1, "mPhotosCount"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPhotosCount:I

    .line 66
    return-void
.end method

.method public setmPosterUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPosterUri"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPosterUri:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "destParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPosterUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumOutsideUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mAlbumVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->mPhotosCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return-void
.end method
