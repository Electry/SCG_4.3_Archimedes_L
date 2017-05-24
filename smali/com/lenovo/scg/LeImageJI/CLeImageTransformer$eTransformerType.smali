.class public final enum Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;
.super Ljava/lang/Enum;
.source "CLeImageTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eTransformerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

.field public static final enum ROTATE_270:Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

.field public static final enum ROTATE_90:Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    const-string v1, "ROTATE_90"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->ROTATE_90:Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    .line 14
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    const-string v1, "ROTATE_270"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->ROTATE_270:Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->ROTATE_90:Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->ROTATE_270:Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->$VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->$VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    return-object v0
.end method
