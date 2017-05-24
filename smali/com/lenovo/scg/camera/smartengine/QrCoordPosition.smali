.class public Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;
.super Ljava/lang/Object;
.source "QrCoordPosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public x1:I

.field public x2:I

.field public x3:I

.field public x4:I

.field public y1:I

.field public y2:I

.field public y3:I

.field public y4:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "x3"    # I
    .param p6, "y3"    # I
    .param p7, "x4"    # I
    .param p8, "y4"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual/range {p0 .. p8}, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->set(IIIIIIII)V

    .line 31
    return-void
.end method

.method public static QrCoordPositionArrayToBoundingRc([Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "vQrcp"    # [Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    .prologue
    .line 86
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 87
    .local v2, "rcRet":Landroid/graphics/Rect;
    array-length v1, p0

    .line 88
    .local v1, "nArrayLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 90
    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->QrCoordPositionToBoundingRc(Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-object v2
.end method

.method static QrCoordPositionToBoundingRc(Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "Qrcp"    # Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    .prologue
    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v0, "rc":Landroid/graphics/Rect;
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 77
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 78
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 79
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    iget v3, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 80
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public set(IIIIIIII)V
    .locals 0
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "x3"    # I
    .param p6, "y3"    # I
    .param p7, "x4"    # I
    .param p8, "y4"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    .line 39
    iput p2, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    .line 40
    iput p3, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    .line 41
    iput p4, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    .line 42
    iput p5, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    .line 43
    iput p6, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    .line 44
    iput p7, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    .line 45
    iput p8, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    .line 46
    return-void
.end method

.method public set([II)V
    .locals 9
    .param p1, "position"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 33
    add-int/lit8 v0, p2, 0x0

    aget v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    aget v2, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget v3, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget v4, p1, v0

    add-int/lit8 v0, p2, 0x4

    aget v5, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget v6, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget v7, p1, v0

    add-int/lit8 v0, p2, 0x7

    aget v8, p1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->set(IIIIIIII)V

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
