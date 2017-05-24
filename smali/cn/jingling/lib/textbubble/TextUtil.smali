.class public Lcn/jingling/lib/textbubble/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# static fields
.field public static final ELLIPSIS:Ljava/lang/String; = "..."


# instance fields
.field private mFontHeight:I

.field private mLineNumber:I

.field private mPaint:Landroid/graphics/Paint;

.field private mStrText:Ljava/lang/String;

.field private mString:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextHeight:I

.field private mTextPosx:I

.field private mTextPosy:I

.field private mTextWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "StrText"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    .line 22
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextUtil;->mPaint:Landroid/graphics/Paint;

    .line 28
    iput-object p1, p0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcn/jingling/lib/textbubble/TextUtil;->mPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    .line 32
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 33
    return-void
.end method


# virtual methods
.method public drawText(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    if-lt v0, v1, :cond_0

    .line 209
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcn/jingling/lib/textbubble/TextUtil;->mTextPosx:I

    int-to-float v2, v2

    .line 207
    iget v3, p0, Lcn/jingling/lib/textbubble/TextUtil;->mTextPosy:I

    iget v4, p0, Lcn/jingling/lib/textbubble/TextUtil;->mFontHeight:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcn/jingling/lib/textbubble/TextUtil;->mPaint:Landroid/graphics/Paint;

    .line 206
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public prepareToDraw()V
    .locals 20

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->clear()V

    .line 52
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 55
    .local v6, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v0, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v16, v0

    iget v0, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mFontHeight:I

    .line 57
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mTextPosy:I

    move/from16 v16, v0

    iget v0, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mTextPosy:I

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v9

    .line 61
    .local v9, "length":I
    const/4 v14, 0x0

    .line 62
    .local v14, "width":I
    const/4 v11, 0x0

    .line 64
    .local v11, "start":I
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v13, v0, [F

    .line 66
    .local v13, "w":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    const-string v17, "..."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 68
    const-string v16, "..."

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    .line 70
    .local v8, "len":I
    const/4 v5, 0x0

    .line 72
    .local v5, "ellipsisLength":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v8, :cond_1

    .line 75
    const/4 v7, 0x0

    :goto_1
    if-lt v7, v9, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mTextHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mFontHeight:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mFontHeight:I

    move/from16 v17, v0

    div-int v10, v16, v17

    .line 111
    .local v10, "realLineNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->clear()V

    .line 114
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v9

    .line 118
    const/4 v14, 0x0

    .line 119
    const/4 v11, 0x0

    .line 121
    const/4 v7, 0x0

    :goto_2
    if-lt v7, v9, :cond_6

    .line 200
    :cond_0
    :goto_3
    return-void

    .line 73
    .end local v10    # "realLineNumber":I
    :cond_1
    int-to-float v0, v5

    move/from16 v16, v0

    aget v17, v13, v7

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v5, v0

    .line 72
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 77
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 78
    .local v2, "ch":C
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v15, v0, [F

    .line 79
    .local v15, "widths":[F
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 82
    .local v12, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v15}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 84
    const/16 v16, 0x0

    aget v16, v15, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    add-int v14, v14, v16

    .line 86
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v2, v0, :cond_3

    .line 88
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v11, v7, 0x1

    .line 92
    const/4 v14, 0x0

    .line 95
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mTextWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v14, v0, :cond_5

    .line 96
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 98
    move v11, v7

    .line 99
    add-int/lit8 v7, v7, -0x1

    .line 100
    const/4 v14, 0x0

    .line 75
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 102
    :cond_5
    add-int/lit8 v16, v9, -0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_4

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 123
    .end local v2    # "ch":C
    .end local v12    # "str":Ljava/lang/String;
    .end local v15    # "widths":[F
    .restart local v10    # "realLineNumber":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 124
    .restart local v2    # "ch":C
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v15, v0, [F

    .line 125
    .restart local v15    # "widths":[F
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 127
    .restart local v12    # "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v15}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 129
    const/16 v16, 0x0

    aget v16, v15, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    add-int v14, v14, v16

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    move/from16 v16, v0

    add-int/lit8 v17, v10, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 136
    add-int v3, v14, v5

    .line 138
    .local v3, "cur":I
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v2, v0, :cond_7

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    const-string v18, "..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 139
    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    goto/16 :goto_3

    .line 145
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mTextWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v3, v0, :cond_b

    .line 146
    if-lez v7, :cond_0

    .line 151
    if-lt v11, v9, :cond_a

    .line 152
    add-int/lit8 v11, v9, -0x1

    .line 157
    :cond_8
    :goto_5
    if-lt v7, v9, :cond_9

    .line 158
    add-int/lit8 v7, v9, -0x1

    .line 163
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v7, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    const-string v18, "..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 163
    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    goto/16 :goto_3

    .line 153
    :cond_a
    if-gez v11, :cond_8

    .line 154
    const/4 v11, 0x0

    goto :goto_5

    .line 166
    :catch_0
    move-exception v4

    .line 168
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 183
    .end local v3    # "cur":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v2, v0, :cond_c

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 186
    add-int/lit8 v11, v7, 0x1

    .line 187
    const/4 v14, 0x0

    .line 190
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mTextWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v14, v0, :cond_d

    .line 192
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcn/jingling/lib/textbubble/TextUtil;->mLineNumber:I

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mString:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 194
    move v11, v7

    .line 195
    add-int/lit8 v7, v7, -0x1

    .line 196
    const/4 v14, 0x0

    .line 121
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcn/jingling/lib/textbubble/TextUtil;->mStrText:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTextRect(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 41
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextUtil;->mTextPosx:I

    .line 42
    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextUtil;->mTextPosy:I

    .line 43
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextUtil;->mTextWidth:I

    .line 44
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/jingling/lib/textbubble/TextUtil;->mTextHeight:I

    .line 46
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextUtil;->prepareToDraw()V

    .line 47
    return-void
.end method
