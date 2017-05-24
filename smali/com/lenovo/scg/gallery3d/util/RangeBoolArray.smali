.class public Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;
.super Ljava/lang/Object;
.source "RangeBoolArray.java"


# instance fields
.field private mData:[Z

.field private mOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mData:[Z

    .line 28
    iput p1, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mOffset:I

    .line 29
    return-void
.end method

.method public constructor <init>([ZII)V
    .locals 0
    .param p1, "src"    # [Z
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mData:[Z

    .line 34
    iput p2, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mOffset:I

    .line 35
    return-void
.end method


# virtual methods
.method public get(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mData:[Z

    iget v1, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mOffset:I

    sub-int v1, p1, v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public indexOf(Z)I
    .locals 2
    .param p1, "object"    # Z

    .prologue
    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mData:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mData:[Z

    aget-boolean v1, v1, v0

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mOffset:I

    add-int/2addr v1, v0

    .line 49
    :goto_1
    return v1

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public put(IZ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "object"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mData:[Z

    iget v1, p0, Lcom/lenovo/scg/gallery3d/util/RangeBoolArray;->mOffset:I

    sub-int v1, p1, v1

    aput-boolean p2, v0, v1

    .line 39
    return-void
.end method
