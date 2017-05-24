.class Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapIOTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mCrop:Landroid/graphics/RectF;

.field mFlags:I

.field mInStream:Ljava/io/InputStream;

.field mInUri:Landroid/net/Uri;

.field mOrig:Landroid/graphics/RectF;

.field mOutStream:Ljava/io/OutputStream;

.field mOutUri:Landroid/net/Uri;

.field mOutputFormat:Ljava/lang/String;

.field mPhoto:Landroid/graphics/RectF;

.field mResultIntent:Landroid/content/Intent;

.field mRotation:I

.field private final mWPManager:Landroid/app/WallpaperManager;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 472
    const-class v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;III)V
    .locals 4
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "destUri"    # Landroid/net/Uri;
    .param p4, "outputFormat"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "cropBounds"    # Landroid/graphics/RectF;
    .param p7, "photoBounds"    # Landroid/graphics/RectF;
    .param p8, "originalBitmapBounds"    # Landroid/graphics/RectF;
    .param p9, "rotation"    # I
    .param p10, "outputX"    # I
    .param p11, "outputY"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 518
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 476
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    .line 478
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    .line 480
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 482
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 484
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    .line 486
    iput v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    .line 488
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    .line 490
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    .line 492
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    .line 494
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    .line 496
    iput v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 519
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 520
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    .line 521
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 522
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    .line 523
    iput p5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    .line 524
    iput-object p6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    .line 525
    iput-object p7, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    .line 526
    iput-object p8, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    .line 527
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    .line 528
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    .line 529
    if-gez p9, :cond_0

    neg-int p9, p9

    .end local p9    # "rotation":I
    :cond_0
    iput p9, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 530
    iget v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 531
    iget v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 532
    # setter for: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputX:I
    invoke-static {p1, p10}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$302(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;I)I

    .line 533
    # setter for: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputY:I
    invoke-static {p1, p11}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$402(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;I)I

    .line 535
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 537
    const-string v1, "CropActivity"

    const-string v2, "cannot write file, no output URI given"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1
    :goto_0
    and-int/lit8 v1, p5, 0x5

    if-eqz v1, :cond_2

    .line 548
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->regenerateInputStream()V

    .line 550
    :cond_2
    return-void

    .line 540
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "CropActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot write file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private regenerateInputStream()V
    .locals 6

    .prologue
    .line 500
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 501
    const-string v3, "CropActivity"

    const-string v4, "cannot read original file, no input URI given"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 505
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->isNewGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 506
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "pathUri":Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "/ACTUAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "newUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    .line 510
    .end local v1    # "newUri":Ljava/lang/String;
    .end local v2    # "pathUri":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "CropActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot read file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 42
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 554
    const/16 v28, 0x0

    .line 555
    .local v28, "failure":Z
    const/4 v5, 0x0

    aget-object v30, p1, v5

    .line 558
    .local v30, "img":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    if-eqz v5, :cond_0

    .line 559
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    invoke-static {v5, v6, v7}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v41

    .line 560
    .local v41, "trueCrop":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 561
    .local v9, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 562
    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 563
    if-eqz v41, :cond_0

    .line 564
    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    .line 565
    .local v34, "rounded":Landroid/graphics/Rect;
    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    const-string v6, "cropped-rect"

    move-object/from16 v0, v34

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 571
    .end local v9    # "m":Landroid/graphics/Matrix;
    .end local v34    # "rounded":Landroid/graphics/Rect;
    .end local v41    # "trueCrop":Landroid/graphics/RectF;
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 572
    sget-boolean v5, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez v30, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 573
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    move-object/from16 v0, v30

    invoke-static {v0, v5, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getCroppedImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 574
    .local v4, "ret":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 575
    const v5, 0xb71b0

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getDownsampledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 577
    :cond_2
    if-nez v4, :cond_4

    .line 578
    const-string v5, "CropActivity"

    const-string v6, "could not downsample bitmap to return in data"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v28, 0x1

    .line 594
    .end local v4    # "ret":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v5, v5, 0x5

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    if-eqz v5, :cond_11

    .line 596
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    invoke-static {v5, v6, v7}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v41

    .line 597
    .restart local v41    # "trueCrop":Landroid/graphics/RectF;
    if-nez v41, :cond_6

    .line 598
    const-string v5, "CropActivity"

    const-string v6, "cannot find crop for full size image"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/16 v28, 0x1

    .line 600
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 791
    .end local v41    # "trueCrop":Landroid/graphics/RectF;
    :goto_1
    return-object v5

    .line 581
    .restart local v4    # "ret":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v5, :cond_5

    .line 582
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 583
    .restart local v9    # "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 584
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 585
    .local v39, "tmp":Landroid/graphics/Bitmap;
    if-eqz v39, :cond_5

    .line 586
    move-object/from16 v4, v39

    .line 589
    .end local v9    # "m":Landroid/graphics/Matrix;
    .end local v39    # "tmp":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    const-string v6, "data"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 602
    .end local v4    # "ret":Landroid/graphics/Bitmap;
    .restart local v41    # "trueCrop":Landroid/graphics/RectF;
    :cond_6
    new-instance v35, Landroid/graphics/Rect;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Rect;-><init>()V

    .line 603
    .local v35, "roundedTrueCrop":Landroid/graphics/Rect;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 605
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gtz v5, :cond_8

    .line 606
    :cond_7
    const-string v5, "CropActivity"

    const-string v6, "crop has bad values for full size image"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v28, 0x1

    .line 608
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    .line 612
    :cond_8
    const/16 v23, 0x0

    .line 614
    .local v23, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 619
    :goto_2
    const/4 v11, 0x0

    .line 620
    .local v11, "crop":Landroid/graphics/Bitmap;
    if-eqz v23, :cond_9

    .line 622
    new-instance v31, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 623
    .local v31, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v31

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 625
    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    .line 633
    :goto_3
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_9
    move-object/from16 v21, v11

    .line 636
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    .local v21, "crop":Landroid/graphics/Bitmap;
    if-nez v21, :cond_1b

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->regenerateInputStream()V

    .line 639
    const/4 v10, 0x0

    .line 640
    .local v10, "fullSize":Landroid/graphics/Bitmap;
    const/16 v29, 0x0

    .line 641
    .local v29, "haveException":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    if-eqz v5, :cond_c

    .line 643
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v10

    .line 652
    :goto_4
    if-nez v10, :cond_c

    if-eqz v29, :cond_c

    .line 655
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->regenerateInputStream()V

    .line 656
    new-instance v32, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 657
    .local v32, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v32

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 658
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 659
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 661
    sget v5, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    int-to-float v5, v5

    move-object/from16 v0, v32

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v32

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float v36, v5, v6

    .line 662
    .local v36, "scale":F
    invoke-static/range {v36 .. v36}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    move-object/from16 v0, v32

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 664
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$500(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$500(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v18, v5, v6

    .line 665
    .local v18, "MAX_PIXEL_COUNT":I
    move-object/from16 v0, v32

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v32

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v6

    move-object/from16 v0, v32

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v32

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v6, v7

    mul-int/2addr v5, v6

    move/from16 v0, v18

    if-le v5, v0, :cond_a

    .line 666
    move/from16 v0, v18

    int-to-float v5, v0

    move-object/from16 v0, v32

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v32

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    move-object/from16 v0, v32

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 668
    :cond_a
    move-object/from16 v0, v35

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v32

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v6

    move-object/from16 v0, v35

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 669
    move-object/from16 v0, v35

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v32

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v6

    move-object/from16 v0, v35

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 670
    move-object/from16 v0, v35

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v32

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v6

    move-object/from16 v0, v35

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 671
    move-object/from16 v0, v35

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v32

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v6

    move-object/from16 v0, v35

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 672
    const/4 v5, 0x0

    move-object/from16 v0, v32

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 674
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->regenerateInputStream()V

    .line 675
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    if-eqz v5, :cond_b

    .line 676
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 677
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$500(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v38, v5, v6

    .line 678
    .local v38, "scaleWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$500(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v37, v5, v6

    .line 679
    .local v37, "scaleHeight":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v37, v5

    if-lez v5, :cond_b

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v38, v5

    if-lez v5, :cond_b

    .line 680
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 681
    .restart local v9    # "m":Landroid/graphics/Matrix;
    move/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 682
    move/from16 v0, v38

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v25, v0

    .line 683
    .local v25, "divWidth":I
    move/from16 v0, v37

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v24, v0

    .line 684
    .local v24, "divHeight":I
    move-object/from16 v0, v35

    iget v5, v0, Landroid/graphics/Rect;->left:I

    div-int v5, v5, v25

    move-object/from16 v0, v35

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 685
    move-object/from16 v0, v35

    iget v5, v0, Landroid/graphics/Rect;->top:I

    div-int v5, v5, v24

    move-object/from16 v0, v35

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 686
    move-object/from16 v0, v35

    iget v5, v0, Landroid/graphics/Rect;->right:I

    div-int v5, v5, v25

    move-object/from16 v0, v35

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 687
    move-object/from16 v0, v35

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    div-int v5, v5, v24

    move-object/from16 v0, v35

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 688
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x0

    move-object v15, v9

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 691
    .end local v9    # "m":Landroid/graphics/Matrix;
    .end local v24    # "divHeight":I
    .end local v25    # "divWidth":I
    .end local v37    # "scaleHeight":F
    .end local v38    # "scaleWidth":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 699
    .end local v18    # "MAX_PIXEL_COUNT":I
    .end local v32    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v36    # "scale":F
    :cond_c
    :goto_5
    if-eqz v10, :cond_1b

    .line 700
    move-object/from16 v0, v35

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v10, v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 704
    .end local v10    # "fullSize":Landroid/graphics/Bitmap;
    .end local v21    # "crop":Landroid/graphics/Bitmap;
    .end local v29    # "haveException":Z
    .restart local v11    # "crop":Landroid/graphics/Bitmap;
    :goto_6
    if-nez v11, :cond_d

    .line 705
    const-string v5, "CropActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot decode file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/16 v28, 0x1

    .line 707
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_1

    .line 615
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v26

    .line 616
    .local v26, "e":Ljava/io/IOException;
    const-string v5, "CropActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot open region decoder for file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 627
    .end local v26    # "e":Ljava/io/IOException;
    .restart local v11    # "crop":Landroid/graphics/Bitmap;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v26

    .line 628
    .local v26, "e":Ljava/lang/Exception;
    const-string v5, "CropActivity"

    const-string v6, "decodeRegion exception "

    move-object/from16 v0, v26

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 629
    .end local v26    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v26

    .line 631
    .local v26, "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "CropActivity"

    const-string v6, "OUT OF MEMORY"

    move-object/from16 v0, v26

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 644
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    .end local v26    # "e":Ljava/lang/OutOfMemoryError;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "fullSize":Landroid/graphics/Bitmap;
    .restart local v21    # "crop":Landroid/graphics/Bitmap;
    .restart local v29    # "haveException":Z
    :catch_3
    move-exception v26

    .line 645
    .local v26, "e":Ljava/lang/Exception;
    const-string v5, "CropActivity"

    const-string/jumbo v6, "other exception "

    move-object/from16 v0, v26

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    const/16 v29, 0x1

    .line 650
    goto/16 :goto_4

    .line 647
    .end local v26    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v26

    .line 648
    .local v26, "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "CropActivity"

    const-string/jumbo v6, "out of memeory "

    move-object/from16 v0, v26

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    const/16 v29, 0x1

    goto/16 :goto_4

    .line 692
    .end local v26    # "e":Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v27

    .line 693
    .local v27, "e1":Ljava/lang/Exception;
    const-string v5, "CropActivity"

    const-string/jumbo v6, "re decode exception "

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 709
    .end local v10    # "fullSize":Landroid/graphics/Bitmap;
    .end local v21    # "crop":Landroid/graphics/Bitmap;
    .end local v27    # "e1":Ljava/lang/Exception;
    .end local v29    # "haveException":Z
    .restart local v11    # "crop":Landroid/graphics/Bitmap;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputX:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$300(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)I

    move-result v5

    if-lez v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputY:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$400(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)I

    move-result v5

    if-lez v5, :cond_13

    .line 710
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 711
    .restart local v9    # "m":Landroid/graphics/Matrix;
    new-instance v22, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 712
    .local v22, "cropRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v5, :cond_e

    .line 713
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 714
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 716
    :cond_e
    new-instance v33, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputX:I
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$300(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputY:I
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$400(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, v33

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 717
    .local v33, "returnRect":Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v9, v0, v1, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 718
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 719
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 720
    .restart local v39    # "tmp":Landroid/graphics/Bitmap;
    if-eqz v39, :cond_f

    .line 721
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 722
    .local v19, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 723
    move-object/from16 v11, v39

    .line 734
    .end local v9    # "m":Landroid/graphics/Matrix;
    .end local v19    # "c":Landroid/graphics/Canvas;
    .end local v22    # "cropRect":Landroid/graphics/RectF;
    .end local v33    # "returnRect":Landroid/graphics/RectF;
    .end local v39    # "tmp":Landroid/graphics/Bitmap;
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v20

    .line 737
    .local v20, "cf":Landroid/graphics/Bitmap$CompressFormat;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_15

    .line 738
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    if-eqz v5, :cond_10

    const/16 v5, 0x5a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 739
    :cond_10
    const-string v5, "CropActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to compress bitmap to file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/16 v28, 0x1

    .line 787
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    .end local v20    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v23    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v35    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local v41    # "trueCrop":Landroid/graphics/RectF;
    :cond_11
    :goto_8
    if-nez v28, :cond_12

    .line 788
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    # invokes: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->updateFileSize(Landroid/net/Uri;)V
    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$600(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;Landroid/net/Uri;)V

    .line 791
    :cond_12
    if-nez v28, :cond_1a

    const/4 v5, 0x1

    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_1

    .line 725
    .restart local v11    # "crop":Landroid/graphics/Bitmap;
    .restart local v23    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v35    # "roundedTrueCrop":Landroid/graphics/Rect;
    .restart local v41    # "trueCrop":Landroid/graphics/RectF;
    :cond_13
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v5, :cond_f

    .line 726
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 727
    .restart local v9    # "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 728
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x1

    move-object/from16 v16, v9

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 729
    .restart local v39    # "tmp":Landroid/graphics/Bitmap;
    if-eqz v39, :cond_f

    .line 730
    move-object/from16 v11, v39

    goto/16 :goto_7

    .line 742
    .end local v9    # "m":Landroid/graphics/Matrix;
    .end local v39    # "tmp":Landroid/graphics/Bitmap;
    .restart local v20    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_8

    .line 746
    :cond_15
    new-instance v40, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x800

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 747
    .local v40, "tmpOut":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x5a

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v11, v0, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 751
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_16

    .line 752
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    if-nez v5, :cond_17

    .line 753
    const-string v5, "CropActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to compress bitmap to file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v28, 0x1

    .line 767
    :cond_16
    :goto_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    if-eqz v5, :cond_11

    .line 768
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    if-nez v5, :cond_18

    .line 769
    const-string v5, "CropActivity"

    const-string/jumbo v6, "no wallpaper manager"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/16 v28, 0x1

    goto/16 :goto_8

    .line 757
    :cond_17
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual/range {v40 .. v40}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 758
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_a

    .line 759
    :catch_6
    move-exception v26

    .line 760
    .local v26, "e":Ljava/io/IOException;
    const-string v5, "CropActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to compress bitmap to file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    const/16 v28, 0x1

    goto :goto_a

    .line 773
    .end local v26    # "e":Ljava/io/IOException;
    :cond_18
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v40 .. v40}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_8

    .line 774
    :catch_7
    move-exception v26

    .line 775
    .restart local v26    # "e":Ljava/io/IOException;
    const-string v5, "CropActivity"

    const-string v6, "cannot write stream to wallpaper"

    move-object/from16 v0, v26

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    const/16 v28, 0x1

    .line 777
    goto/16 :goto_8

    .line 781
    .end local v26    # "e":Ljava/io/IOException;
    :cond_19
    const-string v5, "CropActivity"

    const-string v6, "cannot compress bitmap"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/16 v28, 0x1

    goto/16 :goto_8

    .line 791
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    .end local v20    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v23    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v35    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local v40    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    .end local v41    # "trueCrop":Landroid/graphics/RectF;
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_9

    .restart local v21    # "crop":Landroid/graphics/Bitmap;
    .restart local v23    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v35    # "roundedTrueCrop":Landroid/graphics/Rect;
    .restart local v41    # "trueCrop":Landroid/graphics/RectF;
    :cond_1b
    move-object/from16 v11, v21

    .end local v21    # "crop":Landroid/graphics/Bitmap;
    .restart local v11    # "crop":Landroid/graphics/Bitmap;
    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 472
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 797
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 798
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    # invokes: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->doneBitmapIO(ZLandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$700(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;ZLandroid/content/Intent;)V

    .line 799
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 472
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
