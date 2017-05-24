.class Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
.super Ljava/lang/Object;
.source "ImageListUber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergeSlot"
.end annotation


# instance fields
.field mDateTaken:J

.field mImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

.field private final mList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

.field mListIndex:I

.field private mOffset:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;I)V
    .locals 1
    .param p1, "list"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .param p2, "index"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mOffset:I

    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .line 82
    iput p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mListIndex:I

    .line 83
    return-void
.end method


# virtual methods
.method public next()Z
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mOffset:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mOffset:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mDateTaken:J

    .line 89
    const/4 v0, 0x1

    goto :goto_0
.end method
