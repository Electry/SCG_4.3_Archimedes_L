.class public final enum Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;
.super Ljava/lang/Enum;
.source "CLeImageDataTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eTransformImgDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

.field public static final enum TRANS_FLIP_H:Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

.field public static final enum TRANS_FLIP_V:Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

.field public static final enum TRANS_NONE:Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    const-string v1, "TRANS_NONE"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;->TRANS_NONE:Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    .line 13
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    const-string v1, "TRANS_FLIP_H"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;->TRANS_FLIP_H:Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    .line 14
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    const-string v1, "TRANS_FLIP_V"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;->TRANS_FLIP_V:Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;->TRANS_NONE:Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;->TRANS_FLIP_H:Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;->TRANS_FLIP_V:Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;->$VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;->$VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/LeImageJI/CLeImageDataTransformer$eTransformImgDataType;

    return-object v0
.end method
