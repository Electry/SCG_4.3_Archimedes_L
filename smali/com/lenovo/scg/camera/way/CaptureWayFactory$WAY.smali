.class public final enum Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
.super Ljava/lang/Enum;
.source "CaptureWayFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/CaptureWayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WAY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

.field public static final enum BLINK:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

.field public static final enum EMPTY:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

.field public static final enum SMILE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

.field public static final enum SMILE_AS:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

.field public static final enum TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

.field public static final enum TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

.field public static final enum VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

.field public static final enum VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

.field public static final enum WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->EMPTY:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .line 12
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string v1, "SMILE"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .line 13
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .line 14
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string v1, "TOUCH"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .line 15
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .line 16
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string v1, "VSIGN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .line 17
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string v1, "WAVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .line 18
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string v1, "BLINK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->BLINK:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .line 19
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string v1, "SMILE_AS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE_AS:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->EMPTY:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->BLINK:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE_AS:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->$VALUES:[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->$VALUES:[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    return-object v0
.end method
