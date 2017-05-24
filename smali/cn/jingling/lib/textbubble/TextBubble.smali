.class public Lcn/jingling/lib/textbubble/TextBubble;
.super Landroid/widget/TextView;
.source "TextBubble.java"


# instance fields
.field public final FIXED_PROPORTION:I

.field public final FREE_PROPORTION:I

.field private initStr:Ljava/lang/String;

.field private mAreaHeight:F

.field private mAreaWidth:F

.field private mInitStrWidth:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mInitString:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitTextSize:I

.field private mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

.field private mStrWidth:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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

.field private mTextMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->FREE_PROPORTION:I

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->FIXED_PROPORTION:I

    .line 46
    const/16 v0, 0x1e

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitTextSize:I

    .line 135
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    .line 136
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    .line 169
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    .line 170
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    .line 54
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->FREE_PROPORTION:I

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->FIXED_PROPORTION:I

    .line 46
    const/16 v0, 0x1e

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitTextSize:I

    .line 135
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    .line 136
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    .line 169
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    .line 170
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    .line 66
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->FREE_PROPORTION:I

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->FIXED_PROPORTION:I

    .line 46
    const/16 v0, 0x1e

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitTextSize:I

    .line 135
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    .line 136
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    .line 169
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    .line 170
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    .line 60
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;FF)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "para"    # Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->FREE_PROPORTION:I

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->FIXED_PROPORTION:I

    .line 46
    const/16 v0, 0x1e

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitTextSize:I

    .line 135
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    .line 136
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    .line 169
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    .line 170
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    .line 72
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 73
    iput-object p2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    .line 74
    iput p3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaWidth:F

    .line 75
    iput p4, p0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaHeight:F

    .line 76
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v1, v1, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowRadius:F

    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v2, v2, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowX:F

    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v3, v3, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowY:F

    iget-object v4, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v4, v4, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 77
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v1, v1, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 78
    const-string/jumbo v0, "\u70b9\u51fb\u7f16\u8f91\u6587\u5b57"

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->initStr:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/TextBubble;->fitInitText()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;FFLjava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "para"    # Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "initString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->FREE_PROPORTION:I

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->FIXED_PROPORTION:I

    .line 46
    const/16 v0, 0x1e

    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitTextSize:I

    .line 135
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    .line 136
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    .line 169
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    .line 170
    iput-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    .line 87
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 88
    iput-object p2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    .line 89
    iput p3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaWidth:F

    .line 90
    iput p4, p0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaHeight:F

    .line 91
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v1, v1, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowRadius:F

    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v2, v2, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowX:F

    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v3, v3, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowY:F

    iget-object v4, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v4, v4, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 92
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mPara:Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;

    iget v1, v1, Lcn/jingling/lib/textbubble/TextBubbleStyleParameter;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 93
    iput-object p5, p0, Lcn/jingling/lib/textbubble/TextBubble;->initStr:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcn/jingling/lib/textbubble/TextBubble;->fitInitText()V

    .line 96
    return-void
.end method

.method private TextSizeFit(Ljava/lang/String;FZ)V
    .locals 12
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "f"    # F
    .param p3, "isInitText"    # Z

    .prologue
    .line 285
    new-instance v7, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 286
    .local v7, "txtPaint":Landroid/text/TextPaint;
    invoke-virtual {v7, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 289
    .local v2, "length":I
    const/4 v8, 0x0

    .line 290
    .local v8, "width":I
    const/4 v4, 0x0

    .line 292
    .local v4, "start":I
    const/4 v5, 0x0

    .line 293
    .local v5, "str":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 294
    .local v6, "strWidth":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Float;>;"
    new-instance v5, Ljava/util/Vector;

    .end local v5    # "str":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 295
    .restart local v5    # "str":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/Vector;

    .end local v6    # "strWidth":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Float;>;"
    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 297
    .restart local v6    # "strWidth":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 328
    if-eqz p3, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 329
    iput-object v5, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    .line 330
    iput-object v6, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    .line 335
    :goto_1
    return-void

    .line 299
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 300
    .local v0, "ch":C
    const/4 v10, 0x1

    new-array v9, v10, [F

    .line 301
    .local v9, "widths":[F
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "singleStr":Ljava/lang/String;
    invoke-virtual {v7, v3, v9}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 305
    int-to-float v10, v8

    const/4 v11, 0x0

    aget v11, v9, v11

    add-float/2addr v10, v11

    float-to-int v8, v10

    .line 307
    const/16 v10, 0xa

    if-ne v0, v10, :cond_2

    .line 308
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 309
    int-to-float v10, v8

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 310
    add-int/lit8 v4, v1, 0x1

    .line 311
    const/4 v8, 0x0

    .line 297
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_2
    int-to-float v10, v8

    iget v11, p0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaWidth:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 315
    add-int/lit8 v1, v1, -0x1

    .line 316
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 317
    int-to-float v10, v8

    const/4 v11, 0x0

    aget v11, v9, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 318
    move v4, v1

    .line 319
    const/4 v8, 0x0

    .line 320
    goto :goto_2

    .line 321
    :cond_3
    add-int/lit8 v10, v2, -0x1

    if-ne v1, v10, :cond_1

    .line 322
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 323
    int-to-float v10, v8

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 332
    .end local v0    # "ch":C
    .end local v3    # "singleStr":Ljava/lang/String;
    .end local v9    # "widths":[F
    :cond_4
    iput-object v5, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    .line 333
    iput-object v6, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    goto :goto_1
.end method

.method private fitInitText()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 138
    const/16 v0, 0x1e

    .line 139
    .local v0, "textSize":I
    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 141
    iput-object v2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    .line 143
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 145
    iput-object v2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    .line 147
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/jingling/lib/textbubble/TextBubble;->initStr:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcn/jingling/lib/textbubble/TextBubble;->isTextSizeFit(Ljava/lang/String;IZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    iput v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitTextSize:I

    .line 152
    return-void

    .line 148
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isTextSizeFit(Ljava/lang/String;IZ)Z
    .locals 16
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "textSize"    # I
    .param p3, "isInitText"    # Z

    .prologue
    .line 215
    new-instance v11, Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 216
    .local v11, "txtPaint":Landroid/text/TextPaint;
    move/from16 v0, p2

    int-to-float v14, v0

    invoke-virtual {v11, v14}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 217
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 219
    .local v4, "length":I
    const/4 v12, 0x0

    .line 220
    .local v12, "width":F
    const/4 v8, 0x0

    .line 222
    .local v8, "start":I
    const/4 v9, 0x0

    .line 223
    .local v9, "str":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 224
    .local v10, "strWidth":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Float;>;"
    const/4 v6, 0x0

    .line 225
    .local v6, "mLineNumber":I
    new-instance v9, Ljava/util/Vector;

    .end local v9    # "str":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 226
    .restart local v9    # "str":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/Vector;

    .end local v10    # "strWidth":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Float;>;"
    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 228
    .restart local v10    # "strWidth":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Float;>;"
    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 229
    .local v2, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v14, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v15, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v14, v15

    .line 230
    .local v5, "mFontHeight":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 275
    if-eqz p3, :cond_7

    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    .line 276
    move-object/from16 v0, p0

    iput-object v9, v0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    .line 277
    move-object/from16 v0, p0

    iput-object v10, v0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    .line 282
    :goto_1
    const/4 v14, 0x1

    :goto_2
    return v14

    .line 232
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 233
    .local v1, "ch":C
    const/4 v14, 0x1

    new-array v13, v14, [F

    .line 235
    .local v13, "widths":[F
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, "singleStr":Ljava/lang/String;
    invoke-virtual {v11, v7, v13}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 239
    const/4 v14, 0x0

    aget v14, v13, v14

    add-float/2addr v12, v14

    .line 241
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 242
    add-int/lit8 v6, v6, 0x1

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 244
    const/4 v14, 0x0

    aget v14, v13, v14

    sub-float v14, v12, v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 245
    add-int/lit8 v8, v3, 0x1

    .line 246
    const/4 v12, 0x0

    .line 248
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaWidth:F

    cmpl-float v14, v12, v14

    if-lez v14, :cond_5

    .line 249
    add-int/lit8 v6, v6, 0x1

    .line 250
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 251
    const/4 v14, 0x0

    aget v14, v13, v14

    sub-float v14, v12, v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 252
    move v8, v3

    .line 253
    add-int/lit8 v3, v3, -0x1

    .line 254
    const/4 v12, 0x0

    .line 262
    :cond_2
    :goto_3
    int-to-float v14, v6

    mul-float/2addr v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaHeight:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_6

    .line 263
    if-eqz v9, :cond_3

    .line 264
    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 265
    const/4 v9, 0x0

    .line 267
    :cond_3
    if-eqz v10, :cond_4

    .line 268
    invoke-virtual {v10}, Ljava/util/Vector;->clear()V

    .line 269
    const/4 v10, 0x0

    .line 271
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 256
    :cond_5
    add-int/lit8 v14, v4, -0x1

    if-ne v3, v14, :cond_2

    .line 257
    add-int/lit8 v6, v6, 0x1

    .line 258
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 230
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 279
    .end local v1    # "ch":C
    .end local v7    # "singleStr":Ljava/lang/String;
    .end local v13    # "widths":[F
    :cond_7
    move-object/from16 v0, p0

    iput-object v9, v0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    .line 280
    move-object/from16 v0, p0

    iput-object v10, v0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    goto/16 :goto_1
.end method

.method private refitText(Ljava/lang/String;II)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "before"    # I
    .param p3, "after"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 172
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    float-to-int v1, v2

    .line 173
    .local v1, "textSize":I
    const/4 v0, 0x0

    .line 174
    .local v0, "mIsFitted":Z
    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 176
    iput-object v5, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    .line 178
    :cond_0
    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 180
    iput-object v5, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    .line 185
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 210
    :goto_0
    return-void

    .line 188
    :cond_2
    if-ge p2, p3, :cond_3

    if-nez v0, :cond_4

    .line 190
    :cond_3
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcn/jingling/lib/textbubble/TextBubble;->isTextSizeFit(Ljava/lang/String;IZ)Z

    move-result v2

    if-nez v2, :cond_7

    .line 195
    :cond_4
    if-lt p2, p3, :cond_5

    if-nez v0, :cond_6

    .line 197
    :cond_5
    :goto_2
    invoke-direct {p0, p1, v1, v3}, Lcn/jingling/lib/textbubble/TextBubble;->isTextSizeFit(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 203
    :cond_6
    if-eqz v1, :cond_9

    .line 204
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 209
    :goto_3
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->invalidate()V

    goto :goto_0

    .line 191
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 192
    const/4 v0, 0x1

    goto :goto_1

    .line 198
    :cond_8
    add-int/lit8 v1, v1, -0x1

    .line 199
    const/4 v0, 0x1

    goto :goto_2

    .line 206
    :cond_9
    invoke-direct {p0, p1, v4, v3}, Lcn/jingling/lib/textbubble/TextBubble;->TextSizeFit(Ljava/lang/String;FZ)V

    .line 207
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_3
.end method


# virtual methods
.method public getmTextMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->mTextMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->mTextMatrix:Landroid/graphics/Matrix;

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/textbubble/TextBubble;->mTextMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 102
    const-string/jumbo v3, "textbubble"

    const-string v4, "111 ondraw"

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mTextMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 104
    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 105
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 106
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 120
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mString:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaWidth:F

    iget-object v4, p0, Lcn/jingling/lib/textbubble/TextBubble;->mStrWidth:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v5, v4

    div-float/2addr v4, v10

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v9, v5

    int-to-float v6, v1

    iget v7, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v8, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v1    # "i":I
    :cond_2
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 113
    .local v2, "tp":Landroid/text/TextPaint;
    iget v3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 114
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 115
    .restart local v0    # "fm":Landroid/graphics/Paint$FontMetrics;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 116
    iget-object v3, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitString:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaWidth:F

    iget-object v4, p0, Lcn/jingling/lib/textbubble/TextBubble;->mInitStrWidth:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v5, v4

    div-float/2addr v4, v10

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v9, v5

    int-to-float v6, v1

    iget v7, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v8, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 166
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "preTextWidth"    # F
    .param p2, "preTextHeight"    # F

    .prologue
    .line 340
    iput p2, p0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaHeight:F

    .line 341
    iput p1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mAreaWidth:F

    .line 343
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcn/jingling/lib/textbubble/TextBubble;->refitText(Ljava/lang/String;II)V

    .line 158
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 159
    return-void
.end method

.method public setmTextMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "mTextMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 129
    const-string/jumbo v0, "textbubble"

    const-string v1, "000 setmTextMatrix"

    invoke-static {v0, v1}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcn/jingling/lib/textbubble/TextBubble;->mTextMatrix:Landroid/graphics/Matrix;

    .line 131
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/TextBubble;->invalidate()V

    .line 133
    return-void
.end method
