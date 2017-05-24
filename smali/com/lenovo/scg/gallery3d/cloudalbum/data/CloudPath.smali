.class public Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
.super Ljava/lang/Object;
.source "CloudPath.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;",
            ">;"
        }
    .end annotation
.end field

.field public static mDefaultId:Ljava/lang/String;


# instance fields
.field private mId:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "0"

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mDefaultId:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath$1;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mId:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mPath:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mSize:J

    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .param p1, "x1"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mSize:J

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mSize:J

    return-wide v0
.end method

.method public getmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getmPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mSize:J

    .line 43
    return-void
.end method

.method public setmId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setmPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mPath:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "destParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    return-void
.end method
