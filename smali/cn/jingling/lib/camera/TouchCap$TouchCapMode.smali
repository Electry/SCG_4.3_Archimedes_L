.class public final enum Lcn/jingling/lib/camera/TouchCap$TouchCapMode;
.super Ljava/lang/Enum;
.source "TouchCap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/camera/TouchCap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchCapMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/jingling/lib/camera/TouchCap$TouchCapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

.field public static final enum MODE_DOUBLETAP:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

.field public static final enum MODE_SINGLETAP:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    const-string v1, "MODE_SINGLETAP"

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;->MODE_SINGLETAP:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    new-instance v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    const-string v1, "MODE_DOUBLETAP"

    invoke-direct {v0, v1, v3}, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;->MODE_DOUBLETAP:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    sget-object v1, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;->MODE_SINGLETAP:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    aput-object v1, v0, v2

    sget-object v1, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;->MODE_DOUBLETAP:Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    aput-object v1, v0, v3

    sput-object v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;->ENUM$VALUES:[Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/jingling/lib/camera/TouchCap$TouchCapMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    return-object v0
.end method

.method public static values()[Lcn/jingling/lib/camera/TouchCap$TouchCapMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcn/jingling/lib/camera/TouchCap$TouchCapMode;->ENUM$VALUES:[Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    array-length v1, v0

    new-array v2, v1, [Lcn/jingling/lib/camera/TouchCap$TouchCapMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
