package cz.osu.app.payloads.responses;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
public class MessageResponse {

    @Getter
    @Setter
    private String message;
}
