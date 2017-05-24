.class final enum Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;
.super Ljava/lang/Enum;
.source "TimerWay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/TimerWay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ModeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

.field public static final enum CAPTURING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

.field public static final enum ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

.field public static final enum TIMING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    const-string v1, "ENTERD"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    .line 35
    new-instance v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    const-string v1, "TIMING"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->TIMING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    .line 36
    new-instance v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    const-string v1, "CAPTURING"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->CAPTURING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->ENTERD:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->TIMING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->CAPTURING:Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->$VALUES:[Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->$VALUES:[Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/way/TimerWay$ModeStatus;

    return-object v0
.end method
