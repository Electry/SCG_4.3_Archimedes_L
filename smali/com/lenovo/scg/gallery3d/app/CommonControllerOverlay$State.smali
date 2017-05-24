.class public final enum Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;
.super Ljava/lang/Enum;
.source "CommonControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum ENDED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum ERROR:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum LOADING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum PAUSED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

.field public static final enum PLAYING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    new-instance v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    new-instance v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    new-instance v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    new-instance v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->ERROR:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->LOADING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->$VALUES:[Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->$VALUES:[Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    return-object v0
.end method
