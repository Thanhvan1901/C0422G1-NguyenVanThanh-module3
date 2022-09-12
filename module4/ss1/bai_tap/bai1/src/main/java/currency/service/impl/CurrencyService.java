package currency.service.impl;

import currency.service.ICurrencyService;
import org.springframework.stereotype.Service;

@Service
public class CurrencyService implements ICurrencyService {
    @Override
    public Double getMoney(Double usd) {
        return usd * 23000;
    }
}
