.class public final enum Lcom/lenovo/scg/common/ui/RotateTips$TipsType;
.super Ljava/lang/Enum;
.source "RotateTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/ui/RotateTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TipsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/common/ui/RotateTips$TipsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

.field public static final enum BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

.field public static final enum CENTER:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

.field public static final enum FACE_PREETTY:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->CENTER:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    const-string v1, "FACE_PREETTY"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->FACE_PREETTY:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    .line 287
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->CENTER:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->FACE_PREETTY:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->$VALUES:[Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

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
    .line 287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/common/ui/RotateTips$TipsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    const-class v0, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/common/ui/RotateTips$TipsType;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->$VALUES:[Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    return-object v0
.end method
