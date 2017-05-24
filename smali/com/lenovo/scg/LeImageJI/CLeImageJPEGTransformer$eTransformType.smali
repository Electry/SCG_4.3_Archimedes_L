.class public final enum Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;
.super Ljava/lang/Enum;
.source "CLeImageJPEGTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eTransformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

.field public static final enum TRANS_FLIP_H:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

.field public static final enum TRANS_FLIP_V:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

.field public static final enum TRANS_NONE:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

.field public static final enum TRANS_ROT_180:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

.field public static final enum TRANS_ROT_270:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

.field public static final enum TRANS_ROT_90:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

.field public static final enum TRANS_TRANSPOSE:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

.field public static final enum TRANS_TRANSVERSE:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    const-string v1, "TRANS_NONE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_NONE:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    .line 15
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    const-string v1, "TRANS_FLIP_H"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_FLIP_H:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    .line 16
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    const-string v1, "TRANS_FLIP_V"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_FLIP_V:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    .line 17
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    const-string v1, "TRANS_TRANSPOSE"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_TRANSPOSE:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    .line 18
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    const-string v1, "TRANS_TRANSVERSE"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_TRANSVERSE:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    .line 19
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    const-string v1, "TRANS_ROT_90"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_ROT_90:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    .line 20
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    const-string v1, "TRANS_ROT_180"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_ROT_180:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    .line 21
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    const-string v1, "TRANS_ROT_270"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_ROT_270:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    .line 12
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_NONE:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_FLIP_H:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_FLIP_V:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_TRANSPOSE:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_TRANSVERSE:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_ROT_90:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_ROT_180:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_ROT_270:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->$VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->$VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    return-object v0
.end method
