.class public Lcom/lenovo/scg/common/utils/file/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs ClipJpeg2Square([BII[I)[B
    .locals 20
    .param p0, "srcjpeg"    # [B
    .param p1, "srcPicWidth"    # I
    .param p2, "srcPicHeight"    # I
    .param p3, "outPicSideLen"    # [I

    .prologue
    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 139
    .local v18, "start":J
    const/4 v10, 0x0

    .line 141
    .local v10, "debug":Z
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v3, v0

    if-gtz v3, :cond_1

    .line 142
    :cond_0
    const/4 v15, 0x0

    .line 217
    :goto_0
    return-object v15

    .line 145
    :cond_1
    if-eqz v10, :cond_2

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/SDCardUtils;->getCameraSavePicPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Clip2SquareJpegIn_in_data.jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/lenovo/scg/common/utils/file/FileUtils;->writeFile(Ljava/lang/String;[B)V

    .line 150
    :cond_2
    const/4 v15, 0x0

    .line 152
    .local v15, "outData":[B
    move-object/from16 v16, p3

    .line 153
    .local v16, "outSide":[I
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_5

    move/from16 v8, p2

    .line 154
    .local v8, "clipW":I
    :goto_1
    move v9, v8

    .line 156
    .local v9, "clipH":I
    const-string v3, "FileUtilsClip2SquareJpegIn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "srcPicWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "srcPicHeight :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   clipW: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "        clipH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v3, v0

    if-eqz v3, :cond_3

    .line 159
    const/4 v3, 0x0

    aget v8, p3, v3

    .line 160
    move v9, v8

    .line 163
    :cond_3
    if-lez p2, :cond_4

    if-lez p1, :cond_4

    move/from16 v0, p2

    if-gt v8, v0, :cond_4

    move/from16 v0, p1

    if-le v9, v0, :cond_6

    .line 164
    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    .end local v8    # "clipW":I
    .end local v9    # "clipH":I
    :cond_5
    move/from16 v8, p1

    .line 153
    goto :goto_1

    .line 167
    .restart local v8    # "clipW":I
    .restart local v9    # "clipH":I
    :cond_6
    new-instance v17, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;

    invoke-direct/range {v17 .. v17}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;-><init>()V

    .line 168
    .local v17, "pEnc":Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;
    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->Init()Z

    .line 170
    new-instance v2, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;

    invoke-direct {v2}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;-><init>()V

    .line 171
    .local v2, "pTrans":Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;
    invoke-virtual {v2}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->Init()Z

    .line 176
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    div-double/2addr v4, v6

    double-to-int v14, v4

    .line 178
    .local v14, "offset":I
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 179
    .local v12, "mScreenRect":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 180
    .local v11, "mScreenMax":I
    mul-int v3, v14, p1

    div-int v13, v3, v11

    .line 182
    .local v13, "offSet2Pic":I
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_8

    .line 183
    const-string v3, "FileUtilsClip2SquareJpegIn www---------------------->>>hhhhh "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\toffset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tsrcPicWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tsrcPicHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\toffSet2Pic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tclipW: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tclipH:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  \tleft: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, p1, v8

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  \ttop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, p2, v9

    shr-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sub-int v3, p1, v8

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v13

    sub-float/2addr v3, v4

    float-to-int v6, v3

    sub-int v3, p2, v9

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v7, v3

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->CropJpeg([BIIIIII)[B

    move-result-object v15

    .line 210
    :goto_2
    invoke-virtual {v2}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->Finish()V

    .line 212
    if-eqz v10, :cond_7

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/SDCardUtils;->getCameraSavePicPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Clip2SquareJpegIn_out_data.jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/lenovo/scg/common/utils/file/FileUtils;->writeFile(Ljava/lang/String;[B)V

    .line 216
    :cond_7
    const-string v3, "ClipJpeg2Square-USE-time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    :cond_8
    const-string v3, "FileUtilsClip2SquareJpegIn www<<<<<<<<<<<<<<<<<<<hhhhh"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\toffSet2Pic : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tleft: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, p1, v8

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  \ttop : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, p2, v9

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v6, v13

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   right: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p1, v8

    shr-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tbottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p2, v9

    rsub-int/lit8 v6, v13, 0x1

    shr-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sub-int v3, p1, v8

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v6, v3

    sub-int v3, p2, v9

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v13

    sub-float/2addr v3, v4

    float-to-int v7, v3

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->CropJpeg([BIIIIII)[B

    move-result-object v15

    goto/16 :goto_2
.end method

.method public static varargs ClipYUV2Square([BII[I)[B
    .locals 24
    .param p0, "srcYUV"    # [B
    .param p1, "srcPicWidth"    # I
    .param p2, "srcPicHeight"    # I
    .param p3, "outPicSideLen"    # [I

    .prologue
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 59
    .local v20, "start":J
    const/4 v11, 0x0

    .line 61
    .local v11, "debug":Z
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v4, v0

    if-gtz v4, :cond_1

    .line 62
    :cond_0
    const/16 v16, 0x0

    .line 121
    :goto_0
    return-object v16

    .line 65
    :cond_1
    if-eqz v11, :cond_2

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/SDCardUtils;->getCameraSavePicPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Clip2SquareYUVIn_in_data.yuv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/lenovo/scg/common/utils/file/FileUtils;->writeFile(Ljava/lang/String;[B)V

    .line 69
    :cond_2
    move-object/from16 v3, p0

    .line 71
    .local v3, "data":[B
    move-object/from16 v17, p3

    .line 72
    .local v17, "outSide":[I
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_5

    move/from16 v8, p2

    .line 73
    .local v8, "clipW":I
    :goto_1
    move v9, v8

    .line 75
    .local v9, "clipH":I
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    array-length v4, v0

    if-eqz v4, :cond_3

    .line 76
    const/4 v4, 0x0

    aget v8, p3, v4

    .line 77
    move v9, v8

    .line 80
    :cond_3
    if-lez p2, :cond_4

    if-lez p1, :cond_4

    move/from16 v0, p2

    if-gt v8, v0, :cond_4

    move/from16 v0, p1

    if-le v9, v0, :cond_6

    .line 81
    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    .end local v8    # "clipW":I
    .end local v9    # "clipH":I
    :cond_5
    move/from16 v8, p1

    .line 72
    goto :goto_1

    .line 84
    .restart local v8    # "clipW":I
    .restart local v9    # "clipH":I
    :cond_6
    new-instance v2, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-direct {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;-><init>()V

    .line 85
    .local v2, "pConvert":Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;
    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Init()Z

    .line 86
    new-instance v18, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;

    invoke-direct/range {v18 .. v18}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;-><init>()V

    .line 87
    .local v18, "pEnc":Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->Init()Z

    .line 90
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v22, 0x4004000000000000L    # 2.5

    div-double v4, v4, v22

    double-to-int v15, v4

    .line 92
    .local v15, "offset":I
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 93
    .local v13, "mScreenRect":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 94
    .local v12, "mScreenMax":I
    mul-int v4, v15, p1

    div-int v14, v4, v12

    .line 96
    .local v14, "offSet2Pic":I
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_9

    .line 98
    sub-int v4, p1, v8

    rsub-int/lit8 v5, v14, 0x1

    shr-int/2addr v4, v5

    sub-int v5, p2, v9

    shr-int/lit8 v5, v5, 0x1

    add-int v7, p1, v8

    rsub-int/lit8 v10, v14, 0x1

    shr-int/2addr v7, v10

    add-int v10, p2, v9

    shr-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v4, v5, v7, v10}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->SetClipRect(IIII)I

    .line 110
    :goto_2
    sget-object v4, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    sget-object v7, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ImageColorConvertScaleByte([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;IILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;II)[B

    move-result-object v6

    .line 112
    .local v6, "outData":[B
    if-eqz v11, :cond_7

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/SDCardUtils;->getSCGCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Clip2SquareYUVIn_out_data.yuv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/lenovo/scg/common/utils/file/FileUtils;->writeFile(Ljava/lang/String;[B)V

    .line 115
    :cond_7
    sget v7, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YUV420sp:I

    sget-object v10, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->jpeg:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    move-object/from16 v5, v18

    invoke-virtual/range {v5 .. v10}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;->EncodeBuffer([BIIILcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;)[B

    move-result-object v16

    .line 117
    .local v16, "outJpeg":[B
    if-eqz v11, :cond_8

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/SDCardUtils;->getSCGCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Clip2SquareYUVIn_out_data.jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/lenovo/scg/common/utils/file/FileUtils;->writeFile(Ljava/lang/String;[B)V

    .line 120
    :cond_8
    const-string v4, "ClipYUV2Square-USE-time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v20

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    .end local v6    # "outData":[B
    .end local v16    # "outJpeg":[B
    :cond_9
    sub-int v4, p1, v8

    shr-int/lit8 v4, v4, 0x1

    sub-int v5, p2, v9

    rsub-int/lit8 v7, v14, 0x1

    shr-int/2addr v5, v7

    add-int v7, p1, v8

    shr-int/lit8 v7, v7, 0x1

    add-int v10, p2, v9

    rsub-int/lit8 v19, v14, 0x1

    shr-int v10, v10, v19

    invoke-virtual {v2, v4, v5, v7, v10}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->SetClipRect(IIII)I

    goto/16 :goto_2
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 246
    const/4 v3, 0x0

    .line 248
    .local v3, "info":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 249
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 250
    .local v4, "length":I
    new-array v0, v4, [B

    .line 251
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 252
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "buffer":[B
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    :goto_0
    return-object v3

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readFromFile error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v3, 0x0

    .line 228
    .local v3, "info":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 230
    .local v4, "length":I
    new-array v0, v4, [B

    .line 231
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 232
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "buffer":[B
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    :goto_0
    return-object v3

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readFromFile error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readFileToBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 370
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 371
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 372
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 387
    :goto_0
    return-object v3

    .line 375
    :cond_0
    const/16 v3, 0x400

    :try_start_0
    new-array v0, v3, [B

    .line 377
    .local v0, "b":[B
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 378
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 380
    .end local v0    # "b":[B
    .end local v1    # "n":I
    :catch_0
    move-exception v3

    .line 381
    if-eqz p0, :cond_1

    .line 383
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 387
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    .line 381
    .restart local v0    # "b":[B
    .restart local v1    # "n":I
    :cond_2
    if-eqz p0, :cond_1

    .line 383
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 384
    :catch_1
    move-exception v3

    goto :goto_2

    .line 381
    .end local v0    # "b":[B
    .end local v1    # "n":I
    :catchall_0
    move-exception v3

    if-eqz p0, :cond_3

    .line 383
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 384
    :cond_3
    :goto_3
    throw v3

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_3
.end method

.method public static readFileToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 353
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 356
    .local v0, "b":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 357
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 359
    .end local v0    # "b":[B
    .end local v3    # "n":I
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 360
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 362
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 366
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 360
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "b":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "n":I
    :cond_1
    if-eqz v2, :cond_3

    .line 362
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .line 363
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 360
    .end local v0    # "b":[B
    .end local v3    # "n":I
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_2

    .line 362
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 363
    :cond_2
    :goto_4
    throw v5

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_4

    .line 360
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 359
    :catch_4
    move-exception v5

    goto :goto_1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "b":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "n":I
    :cond_3
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v3, 0x0

    .line 291
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 293
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 295
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    move-object v3, v4

    .line 301
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :goto_0
    :try_start_1
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 302
    .local v5, "fw":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 303
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 305
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 306
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 307
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 296
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 309
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "isAdd"    # Z

    .prologue
    .line 325
    const/4 v3, 0x0

    .line 327
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 329
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 331
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    move-object v3, v4

    .line 337
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :goto_0
    :try_start_1
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 338
    .local v5, "fw":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 339
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 341
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 342
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 343
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "fw":Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 345
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeFile(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "filePath_Name"    # Ljava/lang/String;
    .param p1, "content"    # [B

    .prologue
    .line 274
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 279
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
